import 'package:flutter/material.dart';
import 'package:unify/utils/theme/custom_theme/text_field_theme.dart';

class TDropDownMenuTheme{

  TDropDownMenuTheme._();

  static DropdownMenuThemeData lightDropDownTheme = DropdownMenuThemeData(
    textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    menuStyle: const MenuStyle(
        
    )
  );
}