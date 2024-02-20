import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travelchat/auth/login_or_register.dart';
import 'package:travelchat/firebase_options.dart';
import 'package:travelchat/themes/light_mode.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  // try {
  //   await Firebase.initializeApp(
  //       name: "travelchat", options: DefaultFirebaseOptions.currentPlatform);
  // } catch (e, s) {
  //   log('Error initializing Firebase: $e');
  //   log(s.toString());
  // }

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightmode,
    );
  }
}
