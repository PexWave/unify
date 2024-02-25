import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayerController extends GetxController{

  late VideoPlayerController controller;

  @override
  void onInit(){
    super.onInit();
        controller = VideoPlayerController.asset('assets/videos/samplevid.mp4', videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      });
  }
}