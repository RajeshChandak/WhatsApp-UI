// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Login/loginscreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Onboardingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding.png"),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                    text: "Welcome to WhatsApp",
                    FontKaSize: 20,
                    TextKaColor: Colors.black,
                    FontKaFamily: "inter-regular")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "regular",
                          color: Color(0XFF5E5E5E),
                        ),
                        children: <TextSpan>[
                      TextSpan(text: 'Read out'),
                      TextSpan(
                          text: ' Privacy Policy.',
                          style: TextStyle(
                              color: Color(0XFF0C42CC), fontSize: 14)),
                      TextSpan(text: ' Tap “Agree and continue”\n'),
                      TextSpan(text: '                    to accept the'),
                      TextSpan(
                          text: ' Teams of Service.',
                          style: TextStyle(
                              color: Color(0XFF0C42CC), fontSize: 14)),
                    ])),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButtons(
          callback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
          }, buttonName: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
