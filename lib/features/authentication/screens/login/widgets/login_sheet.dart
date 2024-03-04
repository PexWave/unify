import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/features/authentication/screens/login/login.dart';
import 'package:unify/utils/constants/sizes.dart';

Future loginOrSignUpSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    builder: (context) => Container(
      height: double.infinity,
      child: const Padding(
        padding: EdgeInsets.only(bottom: TSizes.defaultSpace),
        child: LoginScreen(),
        ),
    ),
    );
}