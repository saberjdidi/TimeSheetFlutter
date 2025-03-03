
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/site_layout.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/responsive_screens/dashboard_desktop.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/responsive_screens/dashboard_mobile.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/responsive_screens/dashboard_tablet.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: DashboardDesktopScreen(), tablet: DashboardTabletScreen(), mobile: DashboardMobileScreen());
  }
}
