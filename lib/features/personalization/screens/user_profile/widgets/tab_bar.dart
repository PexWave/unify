import 'package:flutter/material.dart';
import 'package:unify/features/feed/screens/post/post.dart';
import 'package:unify/utils/constants/text_strings.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';



class ProfileTabBarNavigation extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: "orgs"),
    const Tab(text: "post"),
    const Tab(text: "favorites"),
    const Tab(text: "bookmarks"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        children: [
          TabBar(
            tabs: myTabs,
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
            children: <Widget>[
              Column(
                children: [
                     PostScreen(),
                     PostScreen(),

                ],
              ),
              Container(
                color: Colors.yellow,
              ),
                            Container(
                color: Colors.yellow,
              ),
                            Container(
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

