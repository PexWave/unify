import 'package:flutter/material.dart';
import 'package:unify/utils/constants/colors.dart';

class TButtonStyles {
  static  ButtonStyle defaultButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(TColors.primary), // Use MaterialStateProperty
  );
}
