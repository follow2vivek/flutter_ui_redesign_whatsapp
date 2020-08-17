import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff25D384),
              Color(0xff00A38C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image.asset(
          'assets/images/whatsapp_splash_screen.png',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
