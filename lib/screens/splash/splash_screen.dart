import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/onBoarding/on_boarding_screen.dart';
import 'package:whatsapp_ui/widgest/ui_helper.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(height: 20,),
            UiHelper.customText(
              text: 'WhatsApp',
              hight: 18,
              fontWeight: FontWeight.bold
            ),
          ],
        ),
      ),
    );
  }
}