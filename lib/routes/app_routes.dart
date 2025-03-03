
import 'package:get/get.dart';
import 'package:timesheet_flutter/features/authentication/screens/login/login.dart';
import 'package:timesheet_flutter/features/authentication/screens/signup/signup_screen.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/dashboard_screen.dart';
import 'routes.dart';

class TAppRoute {
  static final List<GetPage> pages = [
     GetPage(name: TRoutes.login, page: () => const LoginScreen()),
     GetPage(name: TRoutes.signup, page: () => const SignUpScreen()),
    // GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
    // GetPage(name: TRoutes.resetPassword, page: () => const ResetPasswordScreen()),
     GetPage(name: TRoutes.dashboard, page: () => const DashboardScreen()),
    // GetPage(name: TRoutes.media, page: () => const MediaScreen(), middlewares: [TRouteMiddleware()]),



    //GetPage(name: TRoutes.profile, page: () => const ProfileScreen(), middlewares: [TRouteMiddleware()]),
    //GetPage(name: TRoutes.settings, page: () => const SettingsScreen(), middlewares: [TRouteMiddleware()]),
  ];
}