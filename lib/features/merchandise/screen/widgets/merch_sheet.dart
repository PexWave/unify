import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/features/feed/screens/post/widgets/post_header.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:unify/utils/device/device_utility.dart';

Future showMerchSheet(BuildContext context) {


  return showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    builder: (context) => 
    SingleChildScrollView(
      child: Padding(
        padding:  TSpacingStyle.merchPadding,
        child: Column(
          
          children: [
              const  PostHeader(
                  name: "Jenny Fe",
                  userName: "jenny21",
                  imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
                ),
                    

                const SizedBox(height: TSizes.spaceBtwItems,),

                ClipRRect(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusXl),
                child: CachedNetworkImage(
                  imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
                  fit: BoxFit.cover,
                  width: TDeviceUtils.getScreenWidth() * 0.89,
                  height: TDeviceUtils.getScreenHeight() * 0.57,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
      
              const SizedBox(height: TSizes.spaceBtwItems,),
      
              Text("Awesome TShirt", style: Theme.of(context).textTheme.displaySmall,),
      
              const SizedBox(height: TSizes.spaceBtwItems,),
      
              Text(TTexts.sampleBodyText, 
              style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width:double.infinity,child: Text("₱400", style: Theme.of(context).textTheme.headlineMedium,)),

              const SizedBox(height: TSizes.spaceBtwItems,),

              Row(
              children: [
                  const Icon(Icons.shop_two_outlined),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(child: Text(TTexts.sampleAddressText, maxLines: 3, style: Theme.of(context).textTheme.labelLarge,)),
                ],
              ),


          ],
        ),
        ),
    ),
    );
}