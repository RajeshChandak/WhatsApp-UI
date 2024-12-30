//Shree

import 'package:flutter/material.dart';

class UiHelper {
  static CustomButtons(
      {required VoidCallback callback, required String buttonName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        width: 350,
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
          fontSize: FontKaSize,
          fontFamily: FontKaFamily??"inter",
          color: TextKaColor ?? Color(0XFF5E5E5E),
          fontWeight: FontKaWeight ?? FontWeight.w400),
    );
  }
}
