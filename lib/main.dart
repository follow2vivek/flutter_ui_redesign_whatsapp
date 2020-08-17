import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:whatsapp_redesign/views/views.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    title: 'WhatsApp',
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.rightToLeft,
    onInit: () => Future.delayed(
      Duration(seconds: 3),
      () => Get.to(HomeScreen()),
    ),
  ));
}
