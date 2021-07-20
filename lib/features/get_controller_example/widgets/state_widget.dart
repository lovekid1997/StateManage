import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage/features/get_controller_example/controller/get_controlle.dart';

class StateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('rebuild ControllerWithStateWidget');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GetBuilder<GetController>(
          builder: (_) => Text(_.state!.listData.toString()),
        ),
        TextButton(
          onPressed: () {
            GetController.to.changeState();
          },
          child: const Text(
            'change state',
          ),
        ),
        const Divider(),
      ],
    );
  }
}
