import 'package:flutter/material.dart';
import 'package:unify/utils/constants/text_strings.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Column(
            children: [
              const Text(TTexts.sampleFollowingsText),
              const Text(TTexts.following)
            ],
          ),
        ),
                      Container(
          child: Column(
            children: [
              const Text(TTexts.sampleFollowingsText),
              const Text(TTexts.follower)
            ],
          ),
        ),
                      Container(
          child: Column(
            children: [
              const Text(TTexts.sampleFollowingsText),
              const Text(TTexts.likes)
            ],
          ),
        ),
                      Container(
          child: Column(
            children: [
              const Text(TTexts.sampleFollowingsText),
              const Text(TTexts.upload)
            ],
          ),
        ),
      ],
    );
  }
}
