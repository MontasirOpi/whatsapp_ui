import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/login/login_screen.dart';
import 'package:whatsapp_ui/widgest/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/boardingscreen.png'),
            const SizedBox(height: 20),
            UiHelper.customText(
              text: 'Welcome to WhatsApp',
              hight: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: 'Read out', hight: 14),
                UiHelper.customText(
                  text: ' Privacy Policy',
                  hight: 14,
                  color: Color(0xff0C42CC),
                ),
                UiHelper.customText(
                  text: ' Tap “Agree and continue”',
                  hight: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: 'to accept the', hight: 14),
                UiHelper.customText(
                  text: ' Teams of Service.',
                  hight: 14,  
                  color: Color(0xff0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callBack: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        },
        buttonName: 'Agree and continue',
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
    );
  }
}
