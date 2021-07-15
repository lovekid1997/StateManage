import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:state_manage/locator/locator.dart';
import 'package:state_manage/routes.dart';

Future<void> main() async {
  await configureDependencies();

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo state manage'),
      onGenerateRoute: AppRoute.generateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => Get.toNamed('/riverpodScreen'),
            child: const Text('River pod'),
          ),
        ],
      ),
    );
  }
}