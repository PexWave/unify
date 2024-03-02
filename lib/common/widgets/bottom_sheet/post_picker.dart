import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/utils/constants/sizes.dart';

Future displayPostPickerSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context, 
    builder: (context) => Container(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.only(bottom: TSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.video, size: 45.0,)),
                Text('Video', style: Theme.of(context).textTheme.labelMedium)
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.picture_frame, size: 45.0,)),
                Text('Photo', style: Theme.of(context).textTheme.labelMedium)

              ],
            )
          ],
        ),
        ),
    ),
    );
}