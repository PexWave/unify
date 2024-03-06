import 'package:flutter/material.dart';

import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/videoplayer/video_player.dart';
import 'package:unify/features/feed/screens/post/widgets/like_comment_bookmark_button.dart';
import 'package:unify/features/feed/screens/post/widgets/post_header.dart';
import 'package:unify/features/feed/screens/post/widgets/title_and_description.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';

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
                PostHeader(
                  name: "Jenny Fe",
                  userName: "jenny21",
                  imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
                ),
                    
                    
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


