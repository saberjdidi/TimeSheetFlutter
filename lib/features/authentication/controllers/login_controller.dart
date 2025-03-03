
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timesheet_flutter/data/repositories/authentication_repository.dart';
import 'package:timesheet_flutter/features/authentication/controllers/user_controller.dart';
import 'package:timesheet_flutter/routes/routes.dart';
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/constants/image_strings.dart';
import 'package:timesheet_flutter/utils/helpers/network_manager.dart';
import 'package:timesheet_flutter/utils/popups/full_screen_loader.dart';
import 'package:timesheet_flutter/utils/popups/loaders.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  ///Handles email and password sign-in process
 Future<void> emailAndPasswordSignIn() async {
   try {
     //Start Loading
     TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);

     //Check internet connection
     final isConnected = await NetworkManager.instance.isConnected();
     if(!isConnected) {
       //Remove Loader
       TFullScreenLoader.stopLoading();
       return;
     }

     //Form Validation
     //if(!loginFormKey.currentState!.validate()) return;
     if(!loginFormKey.currentState!.validate()) {
       //Remove Loader
       TFullScreenLoader.stopLoading();
       return;
     }

     //Save Data if remember me is selected
     if(rememberMe.value){
       localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
       localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
     }

     /*
     //Login user
     await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

     //Fetch user details and assign to user controller
     final user = await UserController.instance.fetchUserDetails();

     //Remove Loader
     TFullScreenLoader.stopLoading();

     //if user not admin, logout and return
     if(user.role != AppRole.admin){
       await AuthenticationRepository.instance.logout();
       TLoaders.errorSnackBar(title: 'Not Authorized', message: 'You are not authorized or do have access. Contact Admin');
     } else {
       //Redirect
       Get.offAllNamed(TRoutes.dashboard);
       //AuthenticationRepository.instance.screenRedirect();
     }
     */

     if(email.text.trim() == 'admin@gmail.com' && password.text.trim() == 'admin'){
       Get.offAllNamed(TRoutes.dashboard);
     }
   }
   catch(e){
     //Remove Loader
     TFullScreenLoader.stopLoading();

     //Show some generic error to the user
     TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
   }
 }

  ///Handles registration for admin user
  Future<void> registerAdmin() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog('Registering Admin Account...', TImages.docerAnimation);

      //Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        //Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      /*

      //Register user using email & password Authentication
      await AuthenticationRepository.instance.registerWithEmailAndPassword(TTexts.adminEmail, TTexts.adminPassword);

      //Create admin record in the Firestore
      final userRepository = Get.put(UserRepository());
      await userRepository.createUser(
          UserModel(
              id: AuthenticationRepository.instance.authUser!.uid,
              email: TTexts.adminEmail,
              firstName: 'Saber',
              lastName: 'Jdidi',
              role: AppRole.admin,
              createdAt: DateTime.now()
          )
      );

      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
      */
    }
    catch(e){
      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  /// Google Sign In authentication
  Future<void> googleSignIn() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);

      //Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        //Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

     /*
      //Google Authentication
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      //Save User Record
      await userController.saveUserRecord(userCredentials);

      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
      */
    }
    catch(e){
      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}