import 'package:flutter/material.dart';
import 'package:unify/utils/constants/colors.dart';

class TButtonStyles {
  static  ButtonStyle defaultButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(TColors.primary), // Use MaterialStateProperty
  );


  static final ButtonStyle uploadButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
      side: const BorderSide(color: Colors.transparent),
      
    ),
    backgroundColor: TColors.primary,
    padding: EdgeInsets.zero,
  );


  static final ButtonStyle uploadPhotoOrVideoStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(100.0),
    side: const BorderSide(color: Colors.transparent),
    
  ),
  backgroundColor: TColors.secondary300,
  padding: EdgeInsets.zero,
);
}
