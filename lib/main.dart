import 'package:flutter/material.dart';
import 'package:insta_firebase/responsive/mobile_screen_layout.dart';
import 'package:insta_firebase/responsive/responsive.dart';
import 'package:insta_firebase/responsive/web_screen_layout.dart';
import 'package:insta_firebase/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
