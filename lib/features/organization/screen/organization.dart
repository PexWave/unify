import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/features/organization/screen/widgets/card.dart';

class OrganizationScreen extends StatelessWidget {
  const OrganizationScreen({super.key});

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
            title: const Text('Orgs'),
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
                 OrganizationCard(),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}