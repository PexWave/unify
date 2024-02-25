import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/form_divider.dart';
import 'package:unify/common/widgets/social_buttons.dart';
import 'package:unify/features/authentication/screens/login/widgets/login_form.dart';
import 'package:unify/features/authentication/screens/login/widgets/login_header.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              
              // Login Header
              const LoginHeader(),

              //Form
              const LoginForm(),
                  
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections,),

              const SocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}





