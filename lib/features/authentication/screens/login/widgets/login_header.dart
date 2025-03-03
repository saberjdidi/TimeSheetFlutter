
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/utils/constants/image_strings.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(width: 100, height: 100, image: AssetImage(TImages.logo),),
          const SizedBox(height: TSizes.spaceBtwSections,),
          Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: TSizes.sm),
          Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}