import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayerController extends GetxController with StateMixin {
  static CustomVideoPlayerController get instance => Get.find();

  late VideoPlayerController controller;

  @override
  void onInit(){
    super.onInit();
      change(null, status: RxStatus.loading());

      controller = VideoPlayerController.asset('assets/videos/samplevid.mp4', videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        change(controller, status: RxStatus.success());

      });
  }

}