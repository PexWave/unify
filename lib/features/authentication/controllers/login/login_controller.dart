import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
import 'package:unify/navigation_menu.dart';
import 'package:unify/utils/constants/image_strings.dart';
import 'package:unify/utils/helpers/network_manager.dart';
import 'package:unify/utils/popups/full_screen_loader.dart';
import 'package:unify/utils/popups/loaders.dart';

class CLoginController extends GetxController {
  static CLoginController get instance => Get.find();

    final hidePassword = true.obs;
    
    final wmsuEmail = TextEditingController();
    final password = TextEditingController();

    GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  void loginUser () async {

  try{

    //LOADING
    TFullScreenLoader.openLoadingDialog('logging in', TImages.docerAnimation);

    //CHECK INTERNET CONNECTIVITY
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
    }

    //VALIDATE FORM
    if (!signInFormKey.currentState!.validate()) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
    }

    //SIGN IN USER USING EMAIL AND PASSWORD
    final res = await AuthenticationRepository
    .instance
    .loginUser
      (
          wmsuEmail.text,
          password.text,
      );


      
    //REMOVE LOADER
    TFullScreenLoader.stopLoading();

    //SHOW SUCCESS MESSAGE
    TLoaders.successSnackbar(title: 'Congratulations!', message: 'You have successfully logged in');


    //MOVE TO HOMEFEED
    Get.offAll(() =>  const CustomBottomNavbar());



    }
    catch(e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      TFullScreenLoader.stopLoading();
    }


  }

}