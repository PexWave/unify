import 'package:unify/utils/logging/logger.dart';

class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }


      //Regular expressions for email validation
    final emailRegExp = RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                            );

    if (!emailRegExp.hasMatch(value)) { 
      return 'Invalid email address.';
    }

    return null;  
  }

  static String? validatePhoneNo(String? value) {
    if (value == null || value.isEmpty){
      return 'phone number is required';

    }else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    return null;  
  }

  static String? validateConfirmPassword(String? password, String? confirmPassword){
    if(password != confirmPassword){
      return 'password do not match';
    } else {
      return null;
    }

  }


  static String? genericValidator(String? value) {
        if (value == null || value.isEmpty) {
      return 'this field is required';
    }
  }

  

}