//Shree

import 'package:flutter/material.dart';

class UiHelper {
  static CustomButtons(
      {required VoidCallback callback, required String buttonName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        width: 330,
        child: ElevatedButton(
            onPressed: () {
              callback();
            },style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0XFF00A884)),
        shape: WidgetStatePropertyAll(StadiumBorder())),
            child: Text(
              buttonName,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "inter-regular",
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )),
      ),
    );
  }

  static CustomText(
      {required String text,
      required double FontKaSize,
      Color? TextKaColor,
      FontWeight? FontKaWeight,
      String? FontKaFamily
      }
    ) {
    return Text(
      text,
      style: TextStyle(
          height: 1.3,
          fontSize: FontKaSize,
          fontFamily: FontKaFamily??"inter",
          color: TextKaColor ?? Color(0XFF5E5E5E),
          fontWeight: FontKaWeight ?? FontWeight.w400),
    );
  }

  static CustomContainer(TextEditingController controller){
    return Padding(
      padding: const EdgeInsets.only(left:6, right: 6 ),
      child: Container(
        height: 40,
          width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFFd9d9d9)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,15,8,8),
          child: TextField(
            controller: controller,
            // maxLength: 1,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: InputBorder.none

            ),
          ),
        ),
      ),
    );
  }
}
