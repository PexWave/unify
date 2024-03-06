
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/personalization/screens/user_profile/user_profile.dart';
import 'package:unify/utils/constants/sizes.dart';

class PostHeader extends StatelessWidget {
  final String name;
  final String userName;
  final String imageUrl;

  const PostHeader({
    super.key,
    required this.name,
    required this.userName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
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
                    imageUrl: imageUrl, // Use the provided URL
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.md),
              Column(
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(width: TSizes.xs),
                  Text(userName, style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ],
          ),
        ),
        Obx(() => IconButton(
              onPressed: () {
                isPersonAdded.value = !isPersonAdded.value;
              },
              icon: Icon(isPersonAdded.value ? Icons.person : Icons.person_add_alt_1_outlined),
            )),
      ],
    );
  }
}
