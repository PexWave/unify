import 'package:get/get.dart';

class PostController extends GetxController {
  static PostController get instance => Get.find();

  final isPersonAddedIconClicked = false.obs;
  final isLikeIconClicked = false.obs;
  final isCommentIconClicked = false.obs;
  final isBookmarkedClicked = false.obs;
  final isPostDescriptionClicked = false.obs;


  
}