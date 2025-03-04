import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/templates/site_layout.dart';
import 'package:timesheet_flutter/features/Equipes/Screens/all_equipes/responsive_screens/equipe_desktop.dart';
import 'package:timesheet_flutter/features/Equipes/Screens/all_equipes/responsive_screens/orders_mobile.dart';
import 'package:timesheet_flutter/features/Equipes/Screens/all_equipes/responsive_screens/equipe_tablet.dart';

class EquipeScreen extends StatelessWidget {
  const EquipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: EquipeDesktopScreen(), tablet: EquipeTabletScreen(), mobile: EquipeMobileScreen());
  }
}