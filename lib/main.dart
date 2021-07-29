import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_strategy/url_strategy.dart';

import 'features_web/const/const_web.dart';
import 'locator/locator.dart';
import 'routes.dart';

Future<void> main() async {
  await configureDependencies();

  //
  setPathUrlStrategy();
  //river pod
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo manage',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(context),
      navigatorKey: StackedService.navigatorKey,
      getPages: AppRoute.generateRouteGet(),
      unknownRoute: AppRoute().unknowRoute,
      initialRoute: AppRoute.initialRoutes,
      builder: (context, child) {
        if (kIsWeb) {
          return ResponsiveWrapper.builder(
            child,
            minWidth: 600,
            defaultScale: false,
            breakpoints: [
              const ResponsiveBreakpoint.resize(480, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
          );
        } else {
          return child!;
        }
      },
    );
  }

  ThemeData buildTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      backgroundColor: bgColor,
      canvasColor: bgColor,
      textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme)
          .apply(
            bodyColor: Colors.white,
          )
          .copyWith(
            bodyText1: const TextStyle(color: bodyTextColor, fontSize: 15),
            bodyText2: const TextStyle(color: bodyTextColor, fontSize: 15),
            subtitle1: const TextStyle(color: colorWhite, fontSize: 17),
            subtitle2: const TextStyle(color: colorWhite, fontSize: 15),
          ),
    );
  }
}
