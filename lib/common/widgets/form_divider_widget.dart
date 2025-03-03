import 'package:flutter/material.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';

class FormDividerWidget extends StatelessWidget {
  const FormDividerWidget({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkerGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? TColors.darkerGrey : TColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}