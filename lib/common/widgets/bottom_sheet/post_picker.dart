import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/bottom_sheet/merch_sheet.dart';
import 'package:unify/common/widgets/bottom_sheet/upload_sheet.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

Future postPickerSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => Container(

      height: 200,
      child: Padding(
        padding: TSpacingStyle.uploadPadding,
        child: Column(
          children: [
            SizedBox(
              height: TSizes.uploadButtonHeight,
              width: double.infinity,
              child: ElevatedButton(child: Text(TTexts.uploadPhotoOrVideo, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: TColors.secondary100),), style: TButtonStyles.uploadButtonStyle, onPressed: () {
                Navigator.pop(context);
                uploadPostSheet(context);
              },),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields,),
            SizedBox(
              height: TSizes.uploadButtonHeight,
              width: double.infinity,
              child: ElevatedButton(child: Text(TTexts.uploadMerch, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: TColors.secondary100),), style: TButtonStyles.uploadButtonStyle, onPressed: () {
                Navigator.pop(context);
                uploadMerchSheet(context);
              },),
            ),
          ],
        )
        ),
    ),
    );
}