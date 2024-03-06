import 'package:flutter/material.dart';
import 'package:unify/features/authentication/screens/login/login.dart';
import 'package:unify/utils/constants/sizes.dart';

Future loginOrSignUpSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    builder: (context) => const SizedBox(
      height: double.infinity,
      child:  Padding(
        padding: EdgeInsets.only(bottom: TSizes.defaultSpace),
        child: LoginScreen(),
        ),
    ),
    );
}