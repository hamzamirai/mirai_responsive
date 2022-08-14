/*
* Created By Mirai Devs.
* On 8/30/2021.
*/

import 'package:get/get.dart';
import 'package:mirai_responsive/src/module/controllers/mirai_size_config_controller.dart';

class MiraiSizeConfigBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MiraiSizeConfigController>(
      () => MiraiSizeConfigController(),
      fenix: true,
    );
  }
}