import 'package:flutter/material.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

Future createOrganizationSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    backgroundColor: TColors.primary100,
    isScrollControlled: true,
    builder: (context) => 
      SingleChildScrollView(
        child: Padding(
        padding: TSpacingStyle.uploadPadding,
        child: Container(
          padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
            TextFormField(
              // obscureText: signUpFormController.hidePassword.value,
              // controller: signUpFormController.password,
              // validator: (value) => TValidator.validatePassword(value),
              decoration: const InputDecoration(
                labelText: TTexts.organizationName,
                // suffixIcon: IconButton(
                //   onPressed: () => signUpFormController.hidePassword.value = !signUpFormController.hidePassword.value,
                //   icon: Icon(signUpFormController.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                //   )
              ),
          
            ),
          
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            TextFormField(
              // obscureText: signUpFormController.hidePassword.value,
              // controller: signUpFormController.password,
              // validator: (value) => TValidator.validatePassword(value),
              decoration: const InputDecoration(
                labelText: TTexts.organizationBio,
                // suffixIcon: IconButton(
                //   onPressed: () => signUpFormController.hidePassword.value = !signUpFormController.hidePassword.value,
                //   icon: Icon(signUpFormController.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                //   )
              ),
          
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields,),


            TextFormField(
              // obscureText: signUpFormController.hidePassword.value,
              // controller: signUpFormController.password,
              // validator: (value) => TValidator.validatePassword(value),
              decoration: const InputDecoration(
                labelText: TTexts.description,
                // suffixIcon: IconButton(
                //   onPressed: () => signUpFormController.hidePassword.value = !signUpFormController.hidePassword.value,
                //   icon: Icon(signUpFormController.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                //   )
              ),
          
            ),
          
            const SizedBox(height: TSizes.spaceBtwInputFields,),
          
              SizedBox(
              height: TSizes.uploadButtonHeight,
              width: double.infinity,
              child: TextButton(
          
              style: TButtonStyles.uploadPhotoOrVideoStyle, onPressed: () =>(),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(TTexts.chooseProfilePicture, style: Theme.of(context).textTheme.titleMedium,),
                ],
              ), 
          ),
          
              ),
          
            const SizedBox(height: TSizes.spaceBtwInputFields,),
          
                      
            SizedBox(
              height: TSizes.uploadButtonHeight,
              width: double.infinity,
              child: ElevatedButton(
              style: TButtonStyles.uploadButtonStyle, onPressed: (){},
              child: Text(TTexts.create, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),)
              ),
            ),

            ],
          ),
        ),
            ),
      ),
    );
}