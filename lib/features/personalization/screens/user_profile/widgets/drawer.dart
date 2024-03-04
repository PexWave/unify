import 'package:flutter/material.dart';
import 'package:unify/utils/constants/text_strings.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
    child: ListView(
        children:  [
               TextButton(onPressed:(){}, child: Text(TTexts.logOut, style: Theme.of(context).textTheme.headlineSmall,)),
            ],
          ),
        );
  }
}