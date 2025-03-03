
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/headers/header.dart';
import 'package:timesheet_flutter/common/widgets/layouts/sidebars/sidebar.dart';

class MobileLayout extends StatelessWidget {
   MobileLayout({super.key, this.body});

  final Widget? body;

  ///GlobalKey to access the Scaffold State
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        drawer: const TSidebar(),
        appBar: THeader(scaffoldKey: scaffoldKey),
        body: body ?? const SizedBox()
    );
  }
}