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
}