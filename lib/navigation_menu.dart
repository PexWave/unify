import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/widgets/bottom_sheet/post_picker.dart';
import 'package:unify/features/authentication/screens/login/widgets/login_sheet.dart';
import 'package:unify/features/feed/screens/homefeed/homefeed.dart';
import 'package:unify/features/personalization/screens/user_profile/user_profile.dart';
import 'package:unify/main.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
    floatingActionButton: FloatingActionButton(
    child: const Icon(Iconsax.add),  
    onPressed: () => {
      supabase.auth.currentSession != null ? postPickerSheet(context) : loginOrSignUpSheet(context)
    },
    ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () =>   AnimatedBottomNavigationBar(
      icons: controller.iconList,
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
  final iconList = [
  Iconsax.home,
  Iconsax.shop,
  Iconsax.heart,
  Iconsax.user,
];

  final screens = [const HomeFeed(),Container(color: Colors.blue),Container(color: Colors.red), const UserProfileScreen(),];
  final Rx<int> selectedIndex = 0.obs;
}

