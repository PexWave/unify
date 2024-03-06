import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/styles/text_form_field_styles.dart';
import 'package:unify/common/widgets/profile_picture/profile_picture.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/device/device_utility.dart';

Future showCommentSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    backgroundColor: TColors.primary100,
    isScrollControlled: true,
    builder: (context) => 
      Container(
        height: TDeviceUtils.getScreenHeight(),
        padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            
          //COMMENTS
          Padding(
            padding: TSpacingStyle.defaultPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: CircleAvatar(
                  radius: TSizes.userProfileRadiusSm,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl:  "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                 ),
                ),
            
                Flexible(
                  child: Column(
                    children: [
                        SizedBox( height:20.0, width: double.infinity, child:Text("John Doe", style: Theme.of(context).textTheme.titleSmall,)),
                        Text(TTexts.sampleBodyText, style: Theme.of(context).textTheme.labelMedium,)
            
                    ],
                  ),
                ),
            
                    
            
              ],
            ),
          ),

          //COMMENT
    


          //SEND MESSAGE
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
            
                    SizedBox(
                      width: TDeviceUtils.getScreenWidth() * 0.79,
                      child: TextFormField(
                      // obscureText: signUpFormController.hidePassword.value,
                      // controller: signUpFormController.password,
                      // validator: (value) => TValidator.validatePassword(value),
                      decoration: TTextFormFieldStyles.customFormFieldDecoration,
                                      
                                        ),
                    ),
            
                  const SizedBox(width: TSizes.xs,),
            
                  const SizedBox(
                    width: TSizes.sendMessageButtonWidth,
                    child: Icon(Icons.send_outlined, color: TColors.primary,),
                  )
              ],
            ),
          ),
        
          const SizedBox(height: TSizes.spaceBtwInputFields,),
        
                
          ],
        ),
      ),
    );
}