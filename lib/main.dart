import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp redesign concept',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "home",
      routes: {"/": (context) => HomePage(), "home": (context) => HomePage()},
    );
  }
}
