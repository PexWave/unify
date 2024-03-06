import 'package:flutter/material.dart';
import 'package:unify/utils/constants/text_strings.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Column(
          children: [
             Text(TTexts.sampleFollowingsText),
             Text(TTexts.following)
          ],
        ),
                       Column(
                        children: [
                           Text(TTexts.sampleFollowingsText),
                           Text(TTexts.follower)
                        ],
                      ),
                       Column(
                        children: [
                           Text(TTexts.sampleFollowingsText),
                           Text(TTexts.likes)
                        ],
                      ),
                      Column(
                        children: [
                           Text(TTexts.sampleFollowingsText),
                           Text(TTexts.upload)
                        ],
                      ),
      ],
    );
  }
}
