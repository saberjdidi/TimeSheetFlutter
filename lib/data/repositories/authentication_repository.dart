import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/routes/routes.dart';
import 'package:timesheet_flutter/utils/exceptions/format_exceptions.dart';
import 'package:timesheet_flutter/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
 static AuthenticationRepository get instance => Get.find();

//Firebase Auth instance

 //Get authenticated user data


 //Get isAuthenticated User


/* --------------------------------  LOGIN   --------------------------------------- */
 ///[EmailAuthentication] - SignIn
 Future<void> loginWithEmailAndPassword(String email, String password) async {
  try {
   //return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
  on FormatException catch (_){
   throw const TFormatException();
  }
  on PlatformException catch (e){
   throw TPlatformException(e.code).message;
  }
  catch (e) {
   throw 'Something went wrong. Please try again';
  }
 }


 /* --------------------------------  LOGOUT   --------------------------------------- */
 ///[logoutUser] - Valid for any authentication
 Future<void> logout() async {
  try {
   //await FirebaseAuth.instance.signOut();
   Get.offAllNamed(TRoutes.login);
  }
  on FormatException catch (_){
   throw const TFormatException();
  }
  on PlatformException catch (e){
   throw TPlatformException(e.code).message;
  }
  catch (e) {
   throw 'Something went wrong. Please try again';
  }
 }

}