import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/feed/controllers/post_controller.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      final RxBool isExpanded = RxBool(false); // Unique state variable

    return Column(
      children: [
          Text("Kapit Bisig", style: Theme.of(context).textTheme.titleMedium,),
          
          Obx(() =>
          GestureDetector(
            onTap: () => isExpanded.value = !isExpanded.value,
            child: Text("Lorem Ipsumdsadsa dsadasdasis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
            maxLines: isExpanded.value == true ? null : 3,
            overflow: isExpanded.value == true ? TextOverflow.visible : TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium,
          ))),
          
        
      ],
    );
  }
}

