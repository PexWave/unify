import 'package:get/get.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
import 'package:unify/main.dart';
import 'package:unify/navigation_menu.dart';
import 'package:unify/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(CustomVideoPlayerController());
    Get.put(NavigationController());

    //INITIALIZE USERPROFILE CONTROLLER IF SESSION IS NOT NULL
    supabase.auth.currentSession != null ? Get.put(CProfileController()) : null;
    

  }
}