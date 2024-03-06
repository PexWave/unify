
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/feed/controllers/post_controller.dart';
import 'package:unify/features/personalization/screens/user_profile/user_profile.dart';
import 'package:unify/utils/constants/sizes.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final postController = PostController.instance;
    final RxBool isPersonAdded = RxBool(false); // Unique state variable

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.to(() => const UserProfileScreen()),
          child: Row(
            children: [
              
              CircleAvatar(
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
              
            Column(
              children: [
                Text("John Doe", style: Theme.of(context).textTheme.titleSmall,),
                const SizedBox(width: TSizes.xs,),
                Text("New Blazer", style: Theme.of(context).textTheme.labelSmall,)
              ],
            )
            ],
          ),
        ),
      
      
      Obx(() => IconButton(onPressed: () {
        isPersonAdded.value = !isPersonAdded.value;
      }, 
      icon: Icon(isPersonAdded.value ? Icons.person : Icons.person_add_alt_1_outlined))),
    
      ],
    
    );
  }
}