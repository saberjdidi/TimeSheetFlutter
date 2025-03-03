import 'package:get/get.dart';
import 'package:timesheet_flutter/features/authentication/models/user_model.dart';
import 'package:timesheet_flutter/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  //final userRepository = Get.put(UserRepository());

  RxBool loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserDetails();
  }

  /// Fetches user details from the repository
  Future<UserModel> fetchUserDetails() async {
    try {
     /* loading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user.value = user;
      loading.value = false;
      return user; */
      loading.value = true;
      final userModel = UserModel(email: 'admin@gmail.com', firstName: 'Admin', lastName: 'Admin');
      this.user.value = userModel;
      loading.value = false;
      return userModel;
    }
    catch (e) {
      loading.value = false;
      TLoaders.errorSnackBar(title: 'Something went wrong', message: e.toString());
      return UserModel.empty();
    }
  }
}