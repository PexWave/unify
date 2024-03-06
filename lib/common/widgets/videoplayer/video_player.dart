import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerContainer extends GetView<CustomVideoPlayerController> {
  const VideoPlayerContainer({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Container(
     alignment: Alignment.center,
       height: 300,
       child: controller.obx((state) => 
       AspectRatio(
           aspectRatio: 9.0/16.0,
           child: GestureDetector(
             onTap: () {
       
                 state.value.isPlaying
                     ? state.pause()
                     : state.play();
         
             },
             child: VideoPlayer(state),
             ),
         ),
         onLoading: const Center(child: Text('loading'))
       ),
     );
  }
}
