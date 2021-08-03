import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

const String channleId = 'high_importance_channel'; // id
const String channleTitle = 'High Importance Notifications'; // title
const String channleDescription =
    'This channel is used for important notifications.'; // description

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("Handling a background message: ${message.messageId}");
  log("message: ${message.notification?.body}");
}

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  late NotificationSettings _settings;
  late String _token;

  String get getToken => _token;
  static Future<NotificationService> init() async {
    final NotificationService notificationService = NotificationService();
    await notificationService._requestPermission();
    notificationService._getFcmToken();
    await notificationService.creatChannelMessage();
    notificationService._setUpNotification();

    return notificationService;
  }

  Future<void> _getFcmToken() async {
    _token = await _messaging.getToken() ?? '';
    log('fcm token: $_token');
  }

  Future<void> _setUpNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    //Nhưng bên dưới iOS10, bạn cần cung cấp phương thức gọi lại
    // onDidReceiveLocalNotification để
    // xử lý tương tác của người dùng với thông báo.
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            requestSoundPermission: false,
            requestBadgePermission: false,
            requestAlertPermission: false,
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: selectNotification,
    );

    // final NotificationAppLaunchDetails? result =
    //     await _flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log('Got a message whilst in the foreground!');
      _logDataNotification(message);
      if (message.notification != null) {
        showNotification(message);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      log('App opened');
    });
  }

  Future<String> _base64encodedImage(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    final String base64Data = base64Encode(response.bodyBytes);
    return base64Data;
  }

  Future showNotification(RemoteMessage message) async {
    //Để hiển thị thông báo, bạn cần tạo phiên bản
    // chi tiết thông báo thích hợp (dành cho Android / iOS).
    // Mỗi nền tảng có các đối số cụ thể riêng cần được chuyển vào.
    final String largeIcon = await _base64encodedImage(
        message.notification?.android?.imageUrl ?? '');
    final AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      channleId,
      channleTitle,
      channleDescription,
      sound: const RawResourceAndroidNotificationSound('message'),
      importance: Importance.high,
      priority: Priority.high,
      ticker: 'test ticker',
      fullScreenIntent: true,
      largeIcon: ByteArrayAndroidBitmap.fromBase64String(largeIcon),
    );
    const IOSNotificationDetails iosNotificationDetails =
        IOSNotificationDetails();

    final NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosNotificationDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
        0,
        message.notification?.title ?? ' ',
        message.notification?.body ?? ' ',
        platformChannelSpecifics,
        payload: 'test');
  }

  Future<void> _requestPermission() async {
    _settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    log('User granted permission: ${_settings.authorizationStatus}');
  }

  Future selectNotification(String? payload) async {
    showDialog(
      context: Get.context ?? Get.overlayContext!,
      builder: (_) => AlertDialog(
        title: Text(payload ?? ''),
        content: Text("Payload: $payload"),
      ),
    );
    log('selectNotification $payload');
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    log('onDidReceiveLocalNotification');
  }

  Future<void> creatChannelMessage() async {
    AndroidNotificationChannel channel;
    channel = const AndroidNotificationChannel(
      channleId,
      channleTitle,
      channleDescription,
      importance: Importance.high,
      enableVibration: true,
      enableLights: true,
      sound: RawResourceAndroidNotificationSound('message'),
      playSound: true,
    );

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _logDataNotification(RemoteMessage message) {
    log('android');
    log('channelId: ${message.notification?.android?.channelId}  ');
    log('clickAction: ${message.notification?.android?.clickAction}  ');
    log('color: ${message.notification?.android?.color}  ');
    log('count: ${message.notification?.android?.count}  ');
    log('imageUrl: ${message.notification?.android?.imageUrl}  ');
    log('link: ${message.notification?.android?.link}  ');
    log('priority: ${message.notification?.android?.priority}  ');
    log('smallIcon: ${message.notification?.android?.smallIcon}  ');
    log('sound: ${message.notification?.android?.sound}  ');
    log('ticker: ${message.notification?.android?.ticker}  ');
    log('visibility: ${message.notification?.android?.visibility}  ');
    log('tag: ${message.notification?.android?.tag}  ');
    log('end android\n');
    log('message.data: ${message.data}');
    log('apple:  ${message.notification?.apple}');
    log('title:  ${message.notification?.title}');
    log('titleLocArgs:  ${message.notification?.titleLocArgs}');
    log('titleLocKey:  ${message.notification?.titleLocKey}');
    log('body:  ${message.notification?.body}');
    log('bodyLocArgs:  ${message.notification?.bodyLocArgs}');
    log('bodyLocKey:  ${message.notification?.bodyLocKey}');
  }
}
