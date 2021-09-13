import 'package:get/get.dart';

import '../controller/get_controller_with_frezzed.dart';

class GetBingding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetControllerFreezed());
  }
}
