import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/authentication/controllers/signup/college_dropdown_controller.dart';
import 'package:unify/features/authentication/controllers/signup/signup_controller.dart';
import 'package:unify/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CollegeDropdownController());
    final signUpController = Get.put(CSignUpController());

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
                SignUpForm(controller: controller),

              //Sign up button
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {signUpController.registerUser();}, child: const Text(TTexts.signupTitle))),

                const SizedBox(height: TSizes.spaceBtwInputFields),

                Text(TTexts.alreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium,),
                
                const SizedBox(height: TSizes.spaceBtwInputFields),
                
                SizedBox(width:double.infinity, child:TextButton(onPressed: () {}, child: const Text(TTexts.loginTitle)))
            ]
            ),
        ),
      ),
    );
  }
}

