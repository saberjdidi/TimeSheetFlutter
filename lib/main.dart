import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timesheet_flutter/app.dart';

Future<void> main() async {
  // Ensure that widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX Local Storage
  await GetStorage.init();

  // Remove # sign from url
  //setPathUrlStrategy();

  // Initialize Firebase & Authentication Repository
  /*
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  */

  runApp(const App());
}

