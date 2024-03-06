import 'package:flutter/material.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/device/device_utility.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry defaultPadding= EdgeInsets.only(
    top: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
    bottom: TSizes.spaceBtwSections,
    right: TSizes.defaultSpace,
  );


  static const EdgeInsetsGeometry postPadding= EdgeInsets.only(
    top: TSizes.sm,
    left: TSizes.sm,
    bottom: TSizes.sm,
    right: TSizes.sm,
  );


  static const EdgeInsetsGeometry messagePadding= EdgeInsets.only(
    top: TSizes.md,
    left: TSizes.md,
    bottom: TSizes.md,
    right: TSizes.md,
  );

    static const EdgeInsetsGeometry merchPadding= EdgeInsets.only(
    top: TSizes.sm,
    left: TSizes.sm,
    bottom: TSizes.md,
    right: TSizes.sm,
  );

    static const EdgeInsetsGeometry uploadPadding= EdgeInsets.only(
    top: TSizes.sm,
    left: TSizes.md,
    bottom: TSizes.md,
    right: TSizes.xl,
  );


    static EdgeInsetsGeometry bottomSheetPadding = EdgeInsets.only(
    top: TSizes.sm,
    left: TSizes.md,
    bottom: TDeviceUtils.getKeyBoardHeight(),
    right: TSizes.xl,
  );


}