import 'dart:collection';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/custom_tab/custom_tab.dart';
import 'package:unify/common/widgets/drawer/drawer.dart';
import 'package:unify/common/widgets/follow_or_message/follow_or_message.dart';
import 'package:unify/common/widgets/profile_picture/profile_picture.dart';
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

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
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
        endDrawer: const CustomDrawer(),
        body:  Padding(
          padding: TSpacingStyle.defaultPadding,
          child: SingleChildScrollView(
            child: controller.obx((state) => 
            Column(
              children: [
                    
                //PROFILE
                const ProfilePicture(),
            
              
              const SizedBox(height: TSizes.spaceBtwInputFields,),
            
              //NAME
            
              Text(state!.firstName.toString()),
                    
              const SizedBox(height: TSizes.spaceBtwInputFields * 0.2,),
              
             
              //FOLLOW OR MESSAGE
              const FollowOrMessage(),
            
              const SizedBox(height: TSizes.spaceBtwInputFields * 0.2,),
      
              //USER TABS
              const CustomTabs(),
            
              // const SizedBox(height: TSizes.spaceBtwSections,),
              
              //POSTS, MEMBERS, MERCH (TAB BAR)
                
              ProfileTabBarNavigation(),
                    
                    
              ],
                    
            
            )),
          ),
        )
      ),
    );
  }
}






