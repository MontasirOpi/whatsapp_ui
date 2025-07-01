import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/profile/profile_screen.dart';
import 'package:whatsapp_ui/widgest/ui_helper.dart';

class OptScreen extends StatelessWidget {
  final String phoneNumber;
  OptScreen({Key? key, required this.phoneNumber}) : super(key: key);

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: 'Verifying your number',
              hight: 20,
              color: Color(0xff00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: 'You’ve tried to register +880 $phoneNumber',
              hight: 14,
            ),
            SizedBox(height: 5),
            UiHelper.customText(
              text:
                  'recently. Wait before requesting an sms or a call.',
              hight: 14,
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: 'with your code.',
                  hight: 14,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                    text: 'Wrong number?',
                    hight: 14,
                    color: Color(0xff00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp2Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp3Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp4Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp5Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: 'Didn’t receive code?',
              hight: 14,
              color: Color(0xff00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callBack: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
        },
        buttonName: 'Next',
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
    );
  }
}
