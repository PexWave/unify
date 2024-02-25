import 'package:flutter/material.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';



class HomeFeed extends StatefulWidget {
  const HomeFeed({super.key});

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
final videoController = Get.put(CustomVideoPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Container(
              child: videoController.controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: 9.0/16.0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        videoController.controller.value.isPlaying
                            ? videoController.controller.pause()
                            : videoController.controller.play();
                      });
                    },
                    child: VideoPlayer(videoController.controller),
                    ),
                )
              : const Center(child: Text('loading')),
            )
        ],
      ),

    );
  }
}