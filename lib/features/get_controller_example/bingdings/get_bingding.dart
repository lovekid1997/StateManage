import 'package:get/get.dart';
import 'package:state_manage/features/get_controller_example/controller/get_controller_with_frezzed.dart';

class GetBingding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetControllerFreezed());
  }
}
