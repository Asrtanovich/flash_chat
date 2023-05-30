import 'package:flash_chat/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITTAL,
      getPages: AppPages.routes,
    ),
  );
}
