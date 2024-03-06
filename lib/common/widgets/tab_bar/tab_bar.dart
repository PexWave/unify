import 'package:flutter/material.dart';
import 'package:unify/features/feed/screens/post/post.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';


class ProfileTabBarNavigation extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> children;

  const ProfileTabBarNavigation({required this.tabs, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length, // Use the length of the provided tabs
      initialIndex: 0,
      child: Column(
        children: [
          TabBar(
            tabs: tabs,
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
          ),
          AutoScaleTabBarView(
            children: children,
          ),
        ],
      ),
    );
  }
}
