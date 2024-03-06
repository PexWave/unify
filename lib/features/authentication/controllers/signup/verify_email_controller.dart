import 'dart:async';

import 'package:get/get.dart';
import 'package:unify/common/widgets/success_screen/success_screen.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/main.dart';
import 'package:unify/utils/constants/image_strings.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {

  static VerifyEmailController get instance => Get.find();

    // Optional constructor to handle potential future flexibility
  VerifyEmailController({ required this.email});

  final String? email; // String parameter for future use cases

  @override
  void onInit() {
    super.onInit();

    sendEmailVerification();
    setTimerForAutoRedirect();
    
  }

  //Send Email Verification link
  sendEmailVerification() async {
    try {
    await AuthenticationRepository.instance.verifyEmail(email);
    TLoaders.successSnackbar(title: 'Email Sent', message: 'Please check your inbox and verify your email');
    } catch (e) {    
    TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());

    }
  }

  //Timer to automatically redirect on email verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final user = supabase.auth.currentSession;
      
      if(user != null) {
        timer.cancel();

        Get.off(() => SuccessScreen(
          image: TImages.staticSuccessIllustration,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubtitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
      }
     });
  }


  //Manually check if email verified

  checkEmailVerificationStatus() async {
    final currentUserSession = supabase.auth.currentSession;
    if(currentUserSession != null){
      Get.off(
        () => SuccessScreen(image: TImages.staticSuccessIllustration, title: 'Email Verified!', subTitle: 'Email verification completed!', onPressed: AuthenticationRepository.instance.screenRedirect())
      );
    }
  }

}