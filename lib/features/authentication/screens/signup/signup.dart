import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unify/common/widgets/dropdown.dart';
import 'package:unify/features/authentication/controllers/college_dropdown_controller.dart';
import 'package:unify/utils/constants/sizes.dart';
import 'package:unify/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CollegeDropdownController());

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Form
              Form(
                child: Column(
                  children: [

                    
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                            labelText: TTexts.firstName,
                            prefixIcon: Icon(Iconsax.user),
                          
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields,),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                            labelText: TTexts.lastName,
                            prefixIcon: Icon(Iconsax.user),
                          
                            ),
                          ),
                        ),
                      ],
                    ),


                  // email
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon: Icon(Iconsax.direct)
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: TTexts.phoneNo,
                      prefixIcon: Icon(Iconsax.call)
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  DynamicSearchDropdown(
                    hintText: TTexts.collegeText,
                    items: TCollegeWithCourses.collegeNames,
                    onChanged: (value) {
                      controller.courses.value = TCollegeWithCourses.getcollegeCourses(value);
                    },
                    
                  ),
                  
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  
                  DynamicSearchDropdown(hintText: TTexts.courseText, items: controller.courses, onChanged: (value) {}),
                  
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  
                  CustomDropdown(hintText: TTexts.studentYear, items: TTexts.studentYears, onChanged: (value) {}),
                  
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.signupTitle))),

                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  Text(TTexts.alreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium,),
                  
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  
                  SizedBox(width:double.infinity, child:TextButton(onPressed: () {}, child: const Text(TTexts.loginTitle)))

                  ],
                )
                )
            ]
            ),
        ),
      ),
    );
  }
}