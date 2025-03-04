import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/site_layout.dart';
import 'package:timesheet_flutter/features/personalization/screens/settings/responsive_screens/settings_desktop.dart';
import 'package:timesheet_flutter/features/personalization/screens/settings/responsive_screens/settings_mobile.dart';
import 'package:timesheet_flutter/features/personalization/screens/settings/responsive_screens/settings_tablet.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: SettingsDesktopScreen(), tablet: SettingsTabletScreen(), mobile: SettingsMobileScreen());
  }
}
