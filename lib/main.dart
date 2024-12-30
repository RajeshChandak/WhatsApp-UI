//shree

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/splashscreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
          useMaterial3: false),
    );
  }
}
