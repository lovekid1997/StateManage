import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import 'app.dart';
import 'app_web.dart';
import 'features/anchor_widget_example/anchor_widget_example.dart';
import 'features/channel_example/method_channel_screen.dart';
import 'features/get_controller_example/bingdings/get_bingding.dart';
import 'features/get_controller_example/get_controller_screen.dart';
import 'features/inner_drawer_example/inner_drawer_example_screen.dart';
import 'features/notification_example.dart/notification_screen.dart';
import 'features/riverpod_example/riverpod_screen.dart';
import 'features/sensor/sensor_example_screen.dart';
import 'features/socket_io/socket_io_screen.dart';

class PageViewTransition extends PageTransition {
  PageViewTransition({
    required Widget child,
    required RouteSettings settings,
    PageTransitionType? pageTransitionType,
  }) : super(
          type: pageTransitionType ?? PageTransitionType.rightToLeft,
          child: child,
          inheritTheme: false,
          settings: settings,
        );
}

class AppRoute {
  /// initial route
  static const String initialRoutes = kIsWeb ? initialWeb : initial;

  /// web
  static const String initialWeb = '/my-cv';

  /// application
  static const String initial = '/';
  static const String riverPodScreen = '/riverpodScreen';
  static const String methodChannelScreen = '/methodChannelScreen';
  static const String getControllerScreen = '/getControllerScreen';
  static const String sensorExampleScreen = '/sensorExampleScreen';
  static const String socketIoScreen = '/socketIoScreen';
  static const String anchorWidgetExapleScreen = '/anchorWidgetExapleScreen';
  static const String innerDrawerExample = '/innerDrawerExample';
  static const String notificationScreen = '/notificationScreen';

  static List<GetPage> generateRouteGet() {
    switch (kIsWeb) {
      case true:
        return [
          GetPage(
            name: initialWeb,
            page: () => const AppWebMain(),
            transition: Transition.rightToLeft,
          )
        ];
      case false:
        return [
          GetPage(
            name: initial,
            page: () => const MyHomePage(title: 'Demo state manage'),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: riverPodScreen,
            page: () => const RiverpodScreen(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: methodChannelScreen,
            page: () => const MethodChannelScreen(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: getControllerScreen,
            page: () => GetControllerScreen.init(),
            transition: Transition.rightToLeft,
            binding: GetBingding(),
          ),
          GetPage(
            name: sensorExampleScreen,
            page: () => const SensorExampleScreen(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: socketIoScreen,
            page: () => SocketIoScreen.init(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: anchorWidgetExapleScreen,
            page: () => const AnchorWidgetExapleScreen(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: innerDrawerExample,
            page: () => const InnerDrawerExample(),
            transition: Transition.rightToLeft,
          ),
          GetPage(
            name: notificationScreen,
            page: () => const NotificationScreen(),
            transition: Transition.rightToLeft,
          ),
        ];
      default:
        return [];
    }
  }

  GetPage get unknowRoute => GetPage(
        name: 'unknow',
        page: () => const Scaffold(
          body: Center(child: Text('No route defined')),
        ),
        transition: Transition.rightToLeftWithFade,
      );
}
