
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/custom_tab/custom_tab.dart';
import 'package:unify/common/widgets/drawer/drawer.dart';
import 'package:unify/common/widgets/follow_or_message/follow_or_message.dart';
import 'package:unify/common/widgets/profile_picture/profile_picture.dart';
import 'package:unify/features/feed/screens/post/post.dart';
import 'package:unify/features/organization/screen/widgets/card.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
import 'package:unify/common/widgets/tab_bar/tab_bar.dart';
import 'package:unify/utils/constants/sizes.dart';

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
              const ProfilePicture(
                imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
              ),
            
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
                
              const ProfileTabBarNavigation(
                tabs:  [
                     Tab(icon: Icon(Icons.people),),
                     Tab(icon: Icon(Icons.post_add_outlined)),
                     Tab(icon: Icon(Icons.favorite),),
                     Tab(icon: Icon(Icons.bookmark_add_outlined)),
                ],
                children: [

                      //ORGANIZATIONS
                     Column(
                      children: [
                         SizedBox(height: TSizes.spaceBtwItems,),
                         OrganizationCard(),

                      ],
                    ),

                      //POSTS
                       Column(
                        children: [
                            PostScreen(),
                            PostScreen(),

                        ],
                      ),

                      //FAVORITES
                       Column(
                        children: [
                            PostScreen(),
                            PostScreen(),

                        ],
                      ),


                      //BOOKMARK
                       Column(
                        children: [
                            PostScreen(),
                            PostScreen(),

                        ],
                      ),
                      
                        ],
                      ),
              ],
                    
            
            )),
          ),
        )
      ),
    );
  }
}






