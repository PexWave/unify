import 'package:get/get.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/features/authentication/models/user.dart';
import 'package:unify/navigation_menu.dart';
import 'package:unify/utils/popups/loaders.dart';
import 'package:video_player/video_player.dart';
import 'package:unify/main.dart';

class CProfileController extends GetxController with StateMixin<UserModel> {
  static CProfileController get instance => Get.find();

  late VideoPlayerController controller;

  @override
  void onInit(){
    super.onInit();

    fetchUserProfile();

  }

  void fetchUserProfile() async {

    
      final  data = await supabase
        .from('profiles')
        .select()
        .eq('id', supabase.auth.currentUser!.id);

      final user = UserModel.fromJson(data[0]);
      change(user, status: RxStatus.success());


  }


  void logoutUser() async {

    try {

      await AuthenticationRepository.instance.logout();
      Get.offAll(() => const CustomBottomNavbar());

      TLoaders.successSnackbar(title: 'Successfully logged out!', message: 'You have successfully logged out.');

    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());

    }


  }

}