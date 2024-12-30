//shree


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OnBoarding/onboarding.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();  // Super ka mtlb apni parent class ko call kr legi
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboardingscreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp1.png",),
            SizedBox(height: 15,),
            UiHelper.CustomText(text: "WhatsApp", FontKaSize: 18, TextKaColor: Colors.black,FontKaWeight: FontWeight.w700,  ),
          ],
        ),
      ),
    );
  }
}
