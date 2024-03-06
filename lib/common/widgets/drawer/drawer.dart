import 'package:flutter/material.dart';
import 'package:unify/common/widgets/bottom_sheet/create_organization_sheet.dart';
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
              TextButton(onPressed:() => createOrganizationSheet(context), child: Text(TTexts.createAnOrganization, style: Theme.of(context).textTheme.headlineSmall,)),
              TextButton(onPressed:() => CProfileController.instance.logoutUser(), child: Text(TTexts.logOut, style: Theme.of(context).textTheme.headlineSmall,)),
            ],
          ),
        );
  }
}