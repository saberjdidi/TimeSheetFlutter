import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/site_layout.dart';
import 'package:timesheet_flutter/features/personalization/screens/profile/responsive_screens/profile_desktop.dart';
import 'package:timesheet_flutter/features/personalization/screens/profile/responsive_screens/profile_mobile.dart';
import 'package:timesheet_flutter/features/personalization/screens/profile/responsive_screens/profile_tablet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: ProfileDesktopScreen(), tablet: ProfileTabletScreen(), mobile: ProfileMobileScreen());
  }
}
