import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked_services/stacked_services.dart';

import 'routes.dart';

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
            onPressed: () => Get.toNamed(AppRoute.riverPodScreen),
            child: const Text('River pod'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.methodChannelScreen),
            child: const Text('Channel Method'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.getControllerScreen),
            child: const Text('Get controller'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.sensorExampleScreen),
            child: const Text('Sensor example'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.socketIoScreen),
            child: const Text('Socket io example'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.anchorWidgetExapleScreen),
            child: const Text('Anchor Widget Example'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(AppRoute.innerDrawerExample),
            child: const Text('Inner Drawer Example'),
          ),
        ],
      ),
    );
  }
}
