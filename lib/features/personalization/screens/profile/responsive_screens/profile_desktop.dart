import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:timesheet_flutter/features/personalization/screens/profile/widgets/image_meta.dart';
import 'package:timesheet_flutter/features/personalization/screens/profile/widgets/profile_form.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class ProfileDesktopScreen extends StatelessWidget {
  const ProfileDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Breadcrumbs
              TBreadcrumbsWithHeading(heading: 'Profile', breadcrumbItems: ['Profile']),
              SizedBox(height: TSizes.spaceBtwSections,),

              // body
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Profile Pic and Meta
                  Expanded(child: ImageAndMeta()),
                  SizedBox(width: TSizes.spaceBtwSections,),

                  //Form
                  Expanded(flex: 2,child: ProfileForm()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
