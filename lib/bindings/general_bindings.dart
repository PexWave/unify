import 'package:get/get.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:unify/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(CustomVideoPlayerController());
  }
}