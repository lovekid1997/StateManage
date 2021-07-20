import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:state_manage/features/get_controller_example/controller/get_controlle.dart';
import 'package:state_manage/features/get_controller_example/widgets/counter_test_widget.dart';
import 'package:state_manage/features/get_controller_example/widgets/obs_widget.dart';
import 'package:state_manage/features/get_controller_example/widgets/state_widget.dart';
import 'package:state_manage/features/get_controller_example/widgets/state_with_freezed_widget.dart';

class GetControllerScreen extends HookWidget {
  static GetControllerScreen init({Key? key}) {
    Get.lazyPut(() => GetController());
    return GetControllerScreen(
      key: key,
    );
  }

  const GetControllerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('rebuild GetControllerScreen');

    final obsTest = useMemoized(() => 'OBS test'.obs);
    useEffect(() {
      ever<dynamic>(obsTest, (val) {
        log('ever $val');
      });
      debounce<dynamic>(obsTest, (debounce) => {log('debounce $debounce')},
          time: const Duration(milliseconds: 500));

      obsTest.stream.listen((listen) {
        log('listen $listen');
      });
    });

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              OBSWIdget(obsTest: obsTest),
              CounterTestWidget(),
              StateWidget(),
              StateWithFreezedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
