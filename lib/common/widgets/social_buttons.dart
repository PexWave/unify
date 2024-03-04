import 'package:flutter/material.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/image_strings.dart';
import 'package:unify/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.secondary300), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            image: AssetImage(TImages.google),
            )
          ),
        )
      ],
    );
  }
}