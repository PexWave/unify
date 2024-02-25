import 'package:get/get.dart';

class CollegeDropdownController extends GetxController {
  static CollegeDropdownController get instance => Get.find();

  Rx<String> selectedCollege = ''.obs;
  RxList<String> courses = [''].obs;
}