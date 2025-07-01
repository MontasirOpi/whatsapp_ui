import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomButton({required VoidCallback callBack, required String buttonName}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(buttonName,style: TextStyle(fontSize: 14,color: Colors.white),),
      ),
    );
  }

  static customText ({required String text,required double hight,Color? color,FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: hight,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontWeight,
      )
    );
  }

  static customContainer(TextEditingController controller){
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xffd9d9d9a1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}