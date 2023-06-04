import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/firebase_options.dart';
import 'package:flash_chat/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITTAL,
      // getPages: AppPages.routes,
    ),
  );
}
