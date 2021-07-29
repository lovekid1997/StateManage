import 'dart:developer';

import 'package:get/get.dart';
import '../state/get_state.dart';

class GetController extends GetxController with StateMixin<GetState> {
  static GetController get to => Get.find();
  int counter = 0;

  @override
  void onInit() {
    change(GetData1('qwe', []));

    super.onInit();
  }

  void increment() {
    log('counter $counter');
    counter++;
    update(); // look here!
  }

  Future<void> changeState() async {
    change(GetData1('qwe', ['1', '2', '3']));
    await Future.delayed(const Duration(seconds: 1));
    change(GetData1('qwe', ['4', '5', '6']));
  }
}
