import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_manage/locator/locator.dart';
import 'package:state_manage/notification_service/notification_service.dart';
import 'package:http/http.dart' as http;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                sendPushMessage();
              },
              child: const Text('Test Notification'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sendPushMessage() async {
    final String _token = getIt<NotificationService>().getToken;

    try {
      await http.post(
        Uri.parse('https://api.rnfirebase.io/messaging/send'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: constructFCMPayload(_token),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  String constructFCMPayload(String token) {
    return jsonEncode({
      'token': token,
      'data': {
        'via': 'FlutterFire Cloud Messaging!!!',
        'count': 1,
      },
      'notification': {
        'title': 'Hello FlutterFire!',
        'body': 'This notification  was created via FCM!',
      },
    });
  }
}
