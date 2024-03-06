import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unify/features/authentication/screens/login/login.dart';
import 'package:unify/features/authentication/screens/signup/verification.dart';
import 'package:unify/features/feed/screens/homefeed/homefeed.dart';
import 'package:unify/main.dart';
import 'package:unify/navigation_menu.dart';
import 'package:unify/utils/popups/loaders.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final deviceStorage = GetStorage();

  //Called from main.dart on app launch
  @override
  onReady() async {
    //remove native splash screen
    FlutterNativeSplash.remove();

    //Redirect to the appropriate screen
    // screenRedirect();
  }

  screenRedirect() async {
    final user = supabase.auth;

    if(user.currentUser != null){
      if(user.currentSession != null){
        Get.offAll(() => const CustomBottomNavbar());
      }

      else{
        Get.offAll(() => VerifyEmailScreen(email: supabase.auth.currentUser!.email));
      }
    }

    else{

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const CustomBottomNavbar());

    }


  }

  //USER REGISTER
  Future<AuthResponse> registerUser(String email, String password) async {

    
    try {
      final AuthResponse res = await supabase.auth.signUp(
      email: email,
      password: password,
    );

    //convert auth response to User model

    return res;

    } on AuthException catch (e) {

      throw AuthException(e.message,statusCode: e.statusCode);

    }

  }

  //LOGIN USER
  Future<AuthResponse> loginUser(String email, String password) async {
try {
        final AuthResponse res = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      return res;

    } on AuthException catch (e) {
        throw AuthException(e.message,statusCode: e.statusCode);
    }
  }

  
  // RESEND EMAIL VERIFICATION
  Future<void> verifyEmail(String? email) async {
    try {
    final ResendResponse res = await supabase.auth.resend(
      type: OtpType.signup,
      email: email,
    );

    
    } catch (e) {
      print(e.toString());
      TLoaders.errorSnackBar(title: 'Oh Snappy!', message: e.toString());
    }
  }

  
  //LOGOUT USER
  Future<void> logout() async {

    try {
      await supabase.auth.signOut();
      Get.offAll(() => const HomeFeed());
    } catch (e) {
      throw 'Something went wrong. Try again!';
    }

  }
}