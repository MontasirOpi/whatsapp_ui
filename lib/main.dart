import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00A884)),
      
          useMaterial3: false,
          fontFamily: 'Regular',
      ),
      
      home: SplashScreen()
    );
  }
}
