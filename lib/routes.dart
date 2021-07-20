import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:state_manage/features/channel_example/method_channel_screen.dart';
import 'package:state_manage/features/get_controller_example/bingdings/get_bingding.dart';
import 'package:state_manage/features/get_controller_example/get_controller_screen.dart';
import 'package:state_manage/features/riverpod_example/riverpod_screen.dart';

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
  static const String riverPodScreen = '/riverpodScreen';
  static const String methodChannelScreen = '/methodChannelScreen';
  static const String getControllerScreen = '/getControllerScreen';

  static List<GetPage> generateRouteGet() {
    return [
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
    ];
  }

  GetPage get unknowRoute => GetPage(
        name: 'unknow',
        page: () => const Scaffold(
          body: Center(child: Text('No route defined')),
        ),
        transition: Transition.rightToLeftWithFade,
      );
  //
  // static Route<dynamic> generateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case riverPodScreen:
  //       return PageViewTransition(
  //           child: const RiverpodScreen(), settings: settings);
  //     case methodChannelScreen:
  //       return PageViewTransition(
  //           child: const MethodChannelScreen(), settings: settings);
  //     case getControllerScreen:
  //       return PageViewTransition(
  //           child: GetControllerScreen.init(), settings: settings);

  //     default:
  //       return PageViewTransition(
  //         child: Scaffold(
  //           body: Center(child: Text('No route defined for ${settings.name}')),
  //         ),
  //         settings: settings,
  //       );
  //   }
  // }
}
