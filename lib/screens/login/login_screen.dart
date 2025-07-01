import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/otp/opt_screen.dart';
import 'package:whatsapp_ui/widgest/ui_helper.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = 'Bangladesh';

  List<String> countries = [
    'Bangladesh',
    'Pakistan',
    'Nepal',
    'Sri Lanka',
    'Bhutan',
    'Maldives',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: UiHelper.customText(
                text: 'Enter your phone number',
                hight: 20,
                color: Color(0xff00A884),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            UiHelper.customText(text: 'WhatsApp will need to verify your phone', hight: 16),
            UiHelper.customText(text: 'number. Carrier charges may apply.', hight: 16),
            UiHelper.customText(text: 'What’s my number?', hight: 16,color: Color(0xff00A884)),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countries.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCountry = newValue!;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00A884))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00A884))
                  ),
                 ),
                
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '+880',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        
      ),
      floatingActionButton: UiHelper.CustomButton(callBack: (){
        login(context, phoneController.text.toString());
      }, buttonName: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

login(BuildContext context, String phoneNumber) {
  if (phoneNumber == '') {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Please enter your phone number'),backgroundColor: Color(0xff00A884),)
    );
  }
  else{
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => OptScreen(phoneNumber:phoneNumber),));
  }
}