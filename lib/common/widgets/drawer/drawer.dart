import 'package:flutter/material.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
import 'package:unify/utils/constants/text_strings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
    child: ListView(
        children:  [
               TextButton(onPressed:() => CProfileController.instance.logoutUser(), child: Text(TTexts.logOut, style: Theme.of(context).textTheme.headlineSmall,)),
            ],
          ),
        );
  }
}