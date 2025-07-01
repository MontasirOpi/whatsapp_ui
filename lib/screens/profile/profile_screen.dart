import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/widgest/ui_helper.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: 'Profile info',
              hight: 20,
              color: Color(0xff00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: 'Please provide your name and an optional',
              hight: 16,
            ),
            SizedBox(height: 5),
            UiHelper.customText(text: 'profile photo', hight: 16),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openBottomSheet(context);
              },
              child: pickedImage ==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(217, 230, 230, 190),
                child: Image.asset(
                  'assets/images/photo-camera 1.png',
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ): CircleAvatar(
                radius: 80,
                // backgroundColor: Color.fromARGB(217, 230, 230, 190),
                backgroundImage: FileImage(pickedImage!),
              )
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(color: Color(0xff5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00A884),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00A884),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00A884),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset('assets/images/happy-face 1.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callBack: () {},
        buttonName: 'Next',
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottomSheet(BuildContext context) {
    {
      return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 70,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.gallery);
                      },
                      icon: Icon(
                        Icons.camera,
                        size: 70,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }
  }

  _pickImage(ImageSource ImageSource) async {
    try {
      final photo = await ImagePicker().pickImage(
        source: ImageSource,
      );
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to pick image: $e'),
          backgroundColor: Color(0xff00A884),
        ),
      );
    }
  }
}
