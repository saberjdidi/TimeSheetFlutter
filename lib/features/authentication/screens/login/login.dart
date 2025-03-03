import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/site_layout.dart';
import 'package:timesheet_flutter/features/authentication/screens/login/responsive_screens/login_desktop_tablet.dart';
import 'package:timesheet_flutter/features/authentication/screens/login/responsive_screens/login_mobile.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(useLayout: false, desktop: LoginScreenDesktopTablet(), mobile: LoginScreenMobile());
  }
}
