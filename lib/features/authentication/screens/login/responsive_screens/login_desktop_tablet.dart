
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/common/widgets/form_divider_widget.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/login_template.dart';
import 'package:timesheet_flutter/common/widgets/social_button_widget.dart';
import 'package:timesheet_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:timesheet_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/constants/text_strings.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
        child: Column(
      children: [
        //Header
        const LoginHeader(),

        //Form
        const LoginForm(),

        ///Divider
        FormDividerWidget(dividerText: TTexts.orSignInWith.capitalize!),

         const SizedBox(height: TSizes.spaceBtwItems),

        ///Footer
         const SocialButtonsWidget()
      ],
    ));
  }
}



