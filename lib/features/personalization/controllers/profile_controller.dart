import 'package:get/get.dart';
import 'package:unify/features/authentication/models/User.dart';
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
      print(data);
      change(user, status: RxStatus.success());


  }

}