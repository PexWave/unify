import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:unify/features/feed/controllers/post_controller.dart';
import 'package:unify/features/feed/screens/post/post.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:get/get.dart';



class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(PostController());

    return  SafeArea(
      child: Scaffold(
        appBar: AppBarWithSearchSwitch(
        toolbarHeight: TSizes.appBarHeight,
        onChanged: (text) {
          // update you provider here
          // searchText.value = text;
        }, // onSubmitted: (text) => searchText.value = text,
        appBarBuilder: (context) {
          return AppBar(
            
            title: SizedBox(
              width: TSizes.logo,
              height: TSizes.logo,
              child: Image.asset(
            'assets/logos/UnifyLogo.png',
            height:500.0, // Set your desired height here in pixels
            fit: BoxFit.cover,      
              ),
            ),
            actions: const [
              AppBarSearchButton(),
              // or
              // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
            ],
          );
        },
      ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
                 PostScreen(),
                 PostScreen(),
            ],
          ),
        ),
      
      ),
    );
  }
}