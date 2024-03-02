import 'package:flutter/material.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';



class HomeFeed extends GetView<CustomVideoPlayerController> {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
             Container(
              alignment: Alignment.center,
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
              )
          ],
        ),
      
      ),
    );
  }
}