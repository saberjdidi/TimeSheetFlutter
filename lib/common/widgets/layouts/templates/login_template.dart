import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/styles/spacing_styles.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';


///Template for the login page layout
class LoginTemplate extends StatelessWidget {
  const LoginTemplate({super.key, required this.child});

  ///The widget to be displayed inside the login template
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                color: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white
            ),
            child: child
          ),
        ),
      ),
    );
  }
}
