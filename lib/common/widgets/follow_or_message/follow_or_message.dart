
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:unify/features/chat/screens/chat.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class FollowOrMessage extends StatelessWidget {
  const FollowOrMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final RxBool isFollowing = RxBool(false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: TSizes.buttonWidth * 1, child: Obx(() => TextButton(onPressed: () => isFollowing.value = !isFollowing.value, child:Text(isFollowing.value ? TTexts.following : TTexts.followText, style: Theme.of(context).textTheme.headlineSmall,) ))),
        const SizedBox(width: TSizes.spaceBtwItems,),
        SizedBox(width:TSizes.buttonWidth * 1, child: TextButton(onPressed: () => Get.to(const ChatBox()), child: Text(TTexts.messageText, style: Theme.of(context).textTheme.headlineSmall,))),
      ],
    );
  }
}