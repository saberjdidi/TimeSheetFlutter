import 'package:get/get.dart';
import 'package:timesheet_flutter/features/authentication/controllers/user_controller.dart';
import 'package:timesheet_flutter/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    /// -- Core
    Get.lazyPut(() => NetworkManager(), fenix: true);
    Get.lazyPut(() => UserController(), fenix: true);
  }

}