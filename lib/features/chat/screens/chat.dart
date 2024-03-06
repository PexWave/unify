import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/box_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/styles/text_form_field_styles.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/device/device_utility.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Row(
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

                const SizedBox(width: TSizes.spaceBtwItems,),

                Text("Jenny Doe", style: Theme.of(context).textTheme.titleMedium,)   
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const MessageContainer(),

          const SizedBox(height: TSizes.spaceBtwItems,),

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

          ],
        ),
      ),
    );
  }
}

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
      width: 50,
      height: 50,
      child: CircleAvatar(
      radius: TSizes.borderRadiusXl,
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
    
    const SizedBox(width: TSizes.xs,),
    
    Flexible(
      child: Container(width: TDeviceUtils.getScreenWidth() * 0.79,
      decoration: TBoxStyles.defaultBoxStyle, 
      child: Padding(padding: TSpacingStyle.messagePadding,
      child:Text(TTexts.sampleBodyText, style: Theme.of(context).textTheme.bodyMedium,)
          )
        )
      ),
    
      ],
    );
  }
}