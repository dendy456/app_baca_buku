import 'package:app_baca_buku/screen/drawer.dart';
import 'package:app_baca_buku/screen/home_page.dart';
import 'package:app_baca_buku/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MyApp(),
  );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
