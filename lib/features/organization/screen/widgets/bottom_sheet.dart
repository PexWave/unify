import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/styles/button_styles.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/features/feed/screens/post/widgets/post_header.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/device/device_utility.dart';

Future organizationBottomSheet(BuildContext context) {



  return showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    builder: (context) => 
    SingleChildScrollView(
      child: Padding(
        padding:  TSpacingStyle.merchPadding,
        child: Column(
          
          children: [                    

                ClipRRect(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusXl),
                child: CachedNetworkImage(
                  imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
                  fit: BoxFit.cover,
                  width: TDeviceUtils.getScreenWidth() * 0.89,
                  height: TDeviceUtils.getScreenHeight() * 0.57,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
      
              const SizedBox(height: TSizes.spaceBtwItems,),
      
              Text("The New Blazer", style: Theme.of(context).textTheme.displaySmall,),
      
              const SizedBox(height: TSizes.spaceBtwItems,),
      
              Text(TTexts.sampleBodyText, 
              style: Theme.of(context).textTheme.bodyMedium,
              ),




          ],
        ),
        ),
    ),
    );
}