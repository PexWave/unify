import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/widgets/bottom_sheet/post_picker.dart';
import 'package:unify/features/authentication/screens/login/login.dart';
import 'package:unify/features/authentication/screens/login/widgets/login_sheet.dart';
import 'package:unify/features/feed/screens/homefeed/homefeed.dart';
import 'package:unify/features/merchandise/screen/merch.dart';
import 'package:unify/features/organization/screen/organization.dart';
import 'package:unify/features/personalization/screens/user_profile/user_profile.dart';
import 'package:unify/main.dart';
import 'package:unify/utils/constants/colors.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = NavigationController.instance;

    return Scaffold(
    floatingActionButton: FloatingActionButton(
    backgroundColor: TColors.primary,  
    onPressed: () => {
      supabase.auth.currentSession != null ? postPickerSheet(context) : loginOrSignUpSheet(context)
    },
    child: const Icon(Iconsax.add, color: TColors.secondary100,),

    ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () =>   AnimatedBottomNavigationBar(
      icons: controller.iconList,
      activeColor: TColors.primary,
      activeIndex: controller.selectedIndex.value,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      onTap: (index) => controller.selectedIndex.value = index,
      //other params
   ),
      ),
    body: Obx(() => controller.screens[controller.selectedIndex.value]),
    
    );
  }
}


class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  final iconList = [
  Icons.home_filled,
  Icons.shop_two,
  Icons.people,
  Icons.person,
];

  final screens = [const HomeFeed(), const MerchScreen(), const OrganizationScreen(), supabase.auth.currentSession != null ? const UserProfileScreen() : const LoginScreen(),];
  final Rx<int> selectedIndex = 0.obs;
}

