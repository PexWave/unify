
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/chat/screens/chat.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class FollowOrMessage extends StatelessWidget {
  const FollowOrMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: TSizes.buttonWidth * 1, child: TextButton(onPressed: (){}, child: Text(TTexts.followText, style: Theme.of(context).textTheme.headlineSmall,))),
        const SizedBox(width: TSizes.spaceBtwItems,),
        SizedBox(width:TSizes.buttonWidth * 1, child: TextButton(onPressed: () => Get.to(const ChatBox()), child: Text(TTexts.messageText, style: Theme.of(context).textTheme.headlineSmall,))),
      ],
    );
  }
}