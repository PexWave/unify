import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:unify/common/styles/searchbar_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/videoplayer/video_player.dart';
import 'package:unify/features/feed/controllers/post_controller.dart';
import 'package:unify/features/feed/screens/post/widgets/like_comment_bookmark_button.dart';
import 'package:unify/features/feed/screens/post/widgets/post_header.dart';
import 'package:unify/features/feed/screens/post/widgets/title_and_description.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/device/device_utility.dart';
import 'package:video_player/video_player.dart';

class PostScreen extends StatelessWidget{
  const PostScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: TSpacingStyle.defaultPadding,
        child: Column(
          children: [
            Container(
                padding: TSpacingStyle.postPadding,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                color: Colors.transparent, 
                border: Border.all( // Add border property here
                color: TColors.secondary300, // Set border color
                width: 1.0, // Set desired border thickness (in pixels)
              ),// Set desired radius
              ),
              child: const Column(
                
                children: [
                //PROFILE PIC, NAME, USERNAME ADD BUTTON
                PostHeader(),
                    
                    
                //videoplayer or pictures
                 VideoPlayerContainer(),
                    
                //LIKE, COMMENT, BOOKMARK BUTTONS
                 LikeCommentBookmardDateIcons(),
                    
                    
                //title and description
                 TitleAndDescription()
                    
                    
                ]
              ),
              
            )
          ],
        ),
      );
    
  }
}


