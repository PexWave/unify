import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/features/personalization/screens/profile_picture/profile_picture_viewer.dart';
import 'package:unify/utils/helpers/helper_functions.dart';

class ProfilePicture extends StatelessWidget {

  final String imageUrl;

  const ProfilePicture({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => THelperFunctions.navigateToScreen(context, const ProfilePictureScreen(profileImageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",)),
      child: CircleAvatar(
      radius: 60,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          width: 250,
          height: 250,
        ),
      ),
                  ),
    );
  }
}