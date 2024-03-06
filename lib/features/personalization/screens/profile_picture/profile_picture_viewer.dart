import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class ProfilePictureScreen extends StatelessWidget {
  const ProfilePictureScreen({super.key, required this.profileImageUrl});

  final String profileImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: TSpacingStyle.defaultPadding,
        child: SizedBox.expand(
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  CircleAvatar(
                  radius: TSizes.profilePictureRadius * 2,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl:  profileImageUrl,
                      fit: BoxFit.cover,
                      width: TSizes.profilePictureWidth,
                      height: TSizes.profilePictureHeight,
                    ),
                  ),
                ),
        
                const SizedBox(height: TSizes.spaceBtwInputFields,),
        
                SizedBox(width: TSizes.buttonWidth * 1.5, child: ElevatedButton(onPressed: (){}, child: Text(TTexts.changePhotoText, style: Theme.of(context).textTheme.headlineSmall,)))
              ],
          ),
        ),
      ),
    );
  }
}