import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/bindings/general_bindings.dart';
import 'package:timesheet_flutter/routes/routes.dart';
import 'package:timesheet_flutter/utils/constants/text_strings.dart';
import 'package:timesheet_flutter/utils/theme/theme.dart';

import 'routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: TAppRoute.pages,
      initialRoute: TRoutes.login,
      initialBinding: GeneralBindings(),
      unknownRoute: GetPage(name: '/page-not-found', page: () => const Scaffold(body: Center(child: Text('Page Not Found'),))),
      debugShowCheckedModeBanner: false,
      //scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}

