import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/features/authentication/screens/signup/verification.dart';
import 'package:unify/main.dart';
import 'package:unify/utils/constants/image_strings.dart';
import 'package:unify/utils/helpers/network_manager.dart';
import 'package:unify/utils/popups/full_screen_loader.dart';
import 'package:unify/utils/popups/loaders.dart';


class CSignUpController extends GetxController {
    static CSignUpController get instance => Get.find();

    final hidePassword = true.obs;
    final hideConfirmPass = true.obs;
    
    final wmsuEmail = TextEditingController();
    final password = TextEditingController();
    final confirmPassword = TextEditingController();
    final phoneNo = TextEditingController();
 
    GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();


    void registerUser() async {
    
    try{

    //Loading
    TFullScreenLoader.openLoadingDialog('processing information', TImages.docerAnimation);

    //Check internet connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
    }

    //validate form
    if (!signUpFormKey.currentState!.validate()) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
    }

    //Register user auth and user data
    final res = await AuthenticationRepository
    .instance
    .registerUser
      (
          wmsuEmail.text,
          password.text,
      );

      
    //remove loader
    TFullScreenLoader.stopLoading();

    //show success message
    TLoaders.successSnackbar(title: 'Congratulations!', message: 'You have successfully created an account');


    //Move to verify email
    Get.to(() =>  VerifyEmailScreen(email: res.user?.email));



    }
    catch(e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      TFullScreenLoader.stopLoading();

    }


    }


}