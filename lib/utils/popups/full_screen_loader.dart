import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/common/widgets/animation_loader.dart';
import 'package:unify/utils/constants/colors.dart';

class TFullScreenLoader {

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
       barrierDismissible: false,
       builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: TColors.secondary100,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250,),
              TAnimationLoaderWidget(text: text, animation:animation)
            ]
            ),
        )
       )
    );
  }
  

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
  
}