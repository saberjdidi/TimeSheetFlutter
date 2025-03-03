import 'package:flutter/material.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, required this.desktop, required this.tablet, required this.mobile});

  ///Widget for desktop layout
  final Widget desktop;

  ///Widget for tablet layout
  final Widget tablet;

  ///Widget for mobile layout
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints){
          if(constraints.maxWidth >= TSizes.desktopScreenSize){
            return desktop;
          }
          else if(constraints.maxWidth < TSizes.desktopScreenSize && constraints.maxWidth >= TSizes.tabletScreenSize){
            return tablet;
          }
          else {
            return mobile;
          }
        }
    );
  }
}
