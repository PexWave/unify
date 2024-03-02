import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:unify/features/authentication/screens/login/login.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, required this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController(email: email));

    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => AuthenticationRepository.instance.logout(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
                //Image

                // Title and subtitle
                Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(email ?? '' , style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(TTexts.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

                const SizedBox(height: TSizes.spaceBtwSections,),

                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: const Text(TTexts.tContinue),
                  ),
                ),

                const SizedBox(height: TSizes.spaceBtwItems,),

                SizedBox(width: double.infinity, child: TextButton( onPressed: () {}, child: const Text(TTexts.resendEmail)),)

            ],
          ),
        ),
      ),
    );
  }
}