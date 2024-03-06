import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/features/merchandise/screen/widgets/merch_card.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';

class MerchScreen extends StatelessWidget {
  const MerchScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return  SafeArea(
      child: Scaffold(
              appBar: AppBarWithSearchSwitch(
        onChanged: (text) {
          // update you provider here
          // searchText.value = text;
        }, // onSubmitted: (text) => searchText.value = text,
        appBarBuilder: (context) {
          return  AppBar(
            title: const Text('Merch'),
            actions: const [
              AppBarSearchButton(),
              // or
              // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
            ],
          );
        },
      ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.defaultPadding,
            child: Column(
              children: [
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      MerchCard(),
                      SizedBox(height: TSizes.spaceBtwItems,),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}
