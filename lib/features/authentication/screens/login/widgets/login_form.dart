import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/features/authentication/controllers/login/login_controller.dart';
import 'package:unify/features/authentication/screens/signup/signup.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/validators/validation.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final signInController = Get.put(CLoginController());

    return Form(
      key: signInController.signInFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [

            //EMAIL 
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.loginTitle
              ),
                validator: (value) => TValidator.validateEmail(signInController.wmsuEmail.text),
                controller: signInController.wmsuEmail,
            ),
        
            const SizedBox(height: TSizes.spaceBtwInputFields,),


            //PASSWORD
      Obx(() => TextFormField(
          obscureText: signInController.hidePassword.value,
          controller: signInController.password,
          validator: (value) => TValidator.validatePassword(value),
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: const Icon(Iconsax.security),
            suffixIcon: IconButton(
              onPressed: () => signInController.hidePassword.value = !signInController.hidePassword.value,
              icon: Icon(signInController.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
              )
          ),

        )),


        //FORGOT PASSWORD BUTTON
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
      
              TextButton(onPressed: () {}, child: const Text(TTexts.forgotPassTitle))
      
            ],
          ),
                  
        const SizedBox(height: TSizes.spaceBtwSections), 
    
        SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => signInController.loginUser(), child: const Text(TTexts.loginTitle))),
        const SizedBox(height: TSizes.spaceBtwItems,),
        SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(TTexts.signupTitle))),
    
          ],
          ),
      )
    );
  }
}

