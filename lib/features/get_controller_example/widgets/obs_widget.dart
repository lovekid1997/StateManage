import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OBSWIdget extends StatelessWidget {
  const OBSWIdget({
    Key? key,
    required this.obsTest,
  }) : super(key: key);

  final RxString obsTest;

  @override
  Widget build(BuildContext context) {
    log('rebuild OBSWIdget');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(() => Text("$obsTest")),
        TextButton(
          onPressed: () {
            obsTest.value = 'OBS change';
          },
          child: const Text(
            'change obs',
          ),
        ),
      ],
    );
  }
}
