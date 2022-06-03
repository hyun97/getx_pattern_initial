import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_initial/app/routes/app_page.dart';
import 'package:getx_pattern_initial/app/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.INITIAL,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
  ));
}
