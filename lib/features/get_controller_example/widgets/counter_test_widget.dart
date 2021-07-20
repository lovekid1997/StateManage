import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage/features/get_controller_example/controller/get_controlle.dart';

class CounterTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('rebuild CounterTestWidget');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        GetBuilder<GetController>(
          builder: (_) => Text(
            'Counter ${_.counter}',
          ),
        ),
        TextButton(
          onPressed: () {
            GetController.to.increment();
          },
          child: const Text(
            'counter',
          ),
        ),
        const Divider(),
      ],
    );
  }
}
