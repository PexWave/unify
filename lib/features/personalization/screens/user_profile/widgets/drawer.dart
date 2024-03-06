import 'package:flutter/material.dart';
import 'package:unify/data/repositories/authentication_repository.dart';
import 'package:unify/features/personalization/controllers/profile_controller.dart';
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
              ListTile(
                onTap: () => print("clicked"),
                title: Text(TTexts.logOut),
              )
            ],
          ),
        );
  }
}