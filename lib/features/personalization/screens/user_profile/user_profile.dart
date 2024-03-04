import 'dart:collection';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
import 'package:unify/features/personalization/screens/profile_picture/profile_picture_viewer.dart';
import 'package:unify/features/personalization/screens/user_profile/widgets/tab_bar.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/device/device_utility.dart';
import 'package:unify/utils/helpers/helper_functions.dart';

class UserProfileScreen extends GetView<CProfileController> {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 60,
          backgroundColor: TColors.accent,
          actions: [
            Builder(
              builder: (context) =>
                  IconButton(
                        onPressed: () => Scaffold.of(context).openEndDrawer(),                      icon: const Icon(
                        Iconsax.setting,
                        color: Colors.black,
                        size: 28.0,
                      )
                  ),
            ),
          ],
        ),
      endDrawer: Drawer(
        
      child: ListView(
          children:  [
                 TextButton(onPressed:(){}, child: Text(TTexts.logOut, style: Theme.of(context).textTheme.headlineSmall,)),
              ],
            ),
          ),
      body:  SingleChildScrollView(
        child: controller.obx((state) => 
        SizedBox(
          width: TDeviceUtils.getScreenWidth(),
          child: Column(
            children: [

              //PROFILE
              GestureDetector(
                onTap: () => THelperFunctions.navigateToScreen(context, const ProfilePictureScreen(profileImageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",)),
                child: CircleAvatar(
                radius: 60,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl:  "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                  ),
                ),
                            ),
              ),
          
            
            const SizedBox(height: TSizes.spaceBtwInputFields,),
          
            //NAME
          
            Text(state!.firstName.toString()),

            const SizedBox(height: TSizes.spaceBtwInputFields * 0.2,),
            
     
            //FOLLOW OR MESSAGE
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: TSizes.buttonWidth * 1, child: TextButton(onPressed: (){}, child: Text(TTexts.followText, style: Theme.of(context).textTheme.headlineSmall,))),
                const SizedBox(width: TSizes.spaceBtwItems,),
                SizedBox(width:TSizes.buttonWidth * 1, child: TextButton(onPressed: (){}, child: Text(TTexts.messageText, style: Theme.of(context).textTheme.headlineSmall,))),
              ],
            ),
          
          
          
            const SizedBox(height: TSizes.spaceBtwSections,),
            
            //POSTS, MEMBERS, MERCH (TAB BAR)

            


            ],

          
          ),
        )),
      )
    );
  }
}