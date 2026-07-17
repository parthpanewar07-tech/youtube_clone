import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtube/screens/homeScreen.dart';
import 'package:youtube/screens/mainNavigationScreen.dart';
import 'package:youtube/screens/shortPlayerScreen1.dart';
import 'package:youtube/screens/testScreen.dart';
import 'package:youtube/screens/videoPlayerScreen1.dart';
import 'package:youtube/screens/videoPlayerScreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => homeScreen(),
        '/': (context) => MainNavigationScreen(),
        '/ytVid1': (context) => const TestScreen(),
        '/ytVid2': (context) => const videoPlayerScreen2(),
        '/ytShVid2': (context) => const ShortPlayerScreen1(),
      },
    );
  }
}
