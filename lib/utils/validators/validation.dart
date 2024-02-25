class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }


      //Regular expressions for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) { 
      return 'Invalid email address.';
    }

    return null;  
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
  

}