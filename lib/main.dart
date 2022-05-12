import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:insta_firebase/responsive/mobile_screen_layout.dart';
import 'package:insta_firebase/responsive/responsive.dart';
import 'package:insta_firebase/responsive/web_screen_layout.dart';
import 'package:insta_firebase/screens/login_scree.dart';
import 'package:insta_firebase/screens/signup_screen.dart';
import 'package:insta_firebase/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        // options: FirebaseOptions(apiKey: apiKey, appId: appId, messagingSenderId: messagingSenderId, projectId: projectId)
        );
  } else {
    await Firebase.initializeApp();
  }
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
      home: SignInScreen(),
    );
  }
}

// ResponsiveLayout(
//         webScreenLayout: WebScreenLayout(),
//         mobileScreenLayout: MobileScreenLayout(),