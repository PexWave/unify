

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/features/authentication/controllers/signup/college_dropdown_controller.dart';
import 'package:unify/features/authentication/controllers/signup/signup_controller.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/validators/validation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.controller,
  });

  final CollegeDropdownController controller;

  @override
  Widget build(BuildContext context) {
    final signUpFormController = Get.put(CSignUpController());
    return Form(
      key: signUpFormController.signUpFormKey,
      child: Column(
        children: [

    
            // EMAIL
        TextFormField(
          controller: signUpFormController.wmsuEmail,
          validator: (value) => TValidator.validateEmail(value),
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct)
          ),
  
        ),
    
        const SizedBox(height: TSizes.spaceBtwInputFields,),
      

        //PASSWORD
      Obx(() => TextFormField(
          obscureText: signUpFormController.hidePassword.value,
          controller: signUpFormController.password,
          validator: (value) => TValidator.validatePassword(value),
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: const Icon(Iconsax.security),
            suffixIcon: IconButton(
              onPressed: () => signUpFormController.hidePassword.value = !signUpFormController.hidePassword.value,
              icon: Icon(signUpFormController.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
              )
          ),

        )),
    
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        

        //CONFIRM PASSWORD
      Obx(() => TextFormField(
          controller: signUpFormController.confirmPassword,
          validator: (value) => TValidator.validateConfirmPassword(signUpFormController.password.text, value),
          obscureText: signUpFormController.hideConfirmPass.value,
          decoration: InputDecoration(
            labelText: TTexts.confirmPassword,
            prefixIcon: const Icon(Iconsax.password_check),
            suffixIcon: IconButton(
              onPressed: () => signUpFormController.hideConfirmPass.value = !signUpFormController.hideConfirmPass.value,
              icon: Icon(signUpFormController.hideConfirmPass.value ? Iconsax.eye_slash : Iconsax.eye)
              )
          ),
        )),
    
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        

    
        ],
      )
    );
  }
}