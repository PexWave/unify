import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/features/feed/screens/homefeed/homefeed.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Organizations'),
             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        
          ],
          ),
      ),
    body: Obx(() => controller.screens[controller.selectedIndex.value]),
    
    );
  }
}


class NavigationController extends GetxController {
  final screens = [const HomeFeed(),Container(color: Colors.blue),Container(color: Colors.red),Container(color: Colors.yellow),];
  final Rx<int> selectedIndex = 0.obs;
}