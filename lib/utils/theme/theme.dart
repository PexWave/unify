import 'package:flutter/material.dart';
import 'package:unify/utils/theme/custom_theme/appbar_theme.dart';
import 'package:unify/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:unify/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:unify/utils/theme/custom_theme/chip_theme.dart';
import 'package:unify/utils/theme/custom_theme/dropdown_menu.dart';
import 'package:unify/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:unify/utils/theme/custom_theme/outlined_button.dart';
import 'package:unify/utils/theme/custom_theme/text_field_theme.dart';
import 'package:unify/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily:'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightELevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    dropdownMenuTheme: TDropDownMenuTheme.lightDropDownTheme

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily:'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkELevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}