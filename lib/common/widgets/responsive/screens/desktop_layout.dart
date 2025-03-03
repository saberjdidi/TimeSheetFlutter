
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/layouts/headers/header.dart';
import 'package:timesheet_flutter/common/widgets/layouts/sidebars/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: TSidebar()),
          Expanded(
            flex: 5,
              child: Column(
                children: [
                  //HEADER
                 const THeader(),
                  /*
                  TRoundedContainer(
                    width: double.infinity,
                    height: 75,
                    backgroundColor: Colors.yellow.withOpacity(0.2),
                  ),
                   */

                  //BODY
                  Expanded(child: body ?? const SizedBox())
                ],
              ))
        ],
      ),
    );
  }
}
