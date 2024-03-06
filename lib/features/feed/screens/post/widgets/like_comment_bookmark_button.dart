import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unify/features/feed/screens/post/widgets/comment_sheet.dart';


class LikeCommentBookmardDateIcons extends StatelessWidget {
  const LikeCommentBookmardDateIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final RxBool isLikeClicked = RxBool(false); // Unique state variable
  final RxBool isBookMarkClicked = RxBool(false); // Unique state variable
  final RxInt likes = RxInt(0);
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
              Obx(() => IconButton(
                onPressed: () => {
                  isLikeClicked.value = !isLikeClicked.value,
                  likes.value++
                  
                },
                icon: Icon(
                  Icons.favorite, // Use built-in favorite icon for filled heart
                  color: isLikeClicked.value ? Colors.red : Colors.grey, // Use grey for inactive state
                ),
              )), 

           Obx(() => Text(likes.value.toString(), style: Theme.of(context).textTheme.labelSmall,)),

            IconButton(onPressed:() => showCommentSheet(context),icon: const Icon(Icons.comment_outlined)),

            Text("5", style: Theme.of(context).textTheme.labelSmall,),

            Obx(() => IconButton(onPressed:() => isBookMarkClicked.value = !isBookMarkClicked.value, icon: isBookMarkClicked.value ? const Icon(Icons.bookmark_add) : const Icon(Icons.bookmark_add_outlined))),
          ],
        ),
    
       Text("March 3, 2024", style: Theme.of(context).textTheme.labelSmall,)
      ],
    );
  }
}



