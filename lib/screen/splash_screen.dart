import 'dart:async';
import 'package:app_baca_buku/screen/drawer.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() { 
    var duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) {
          return MenuSamping();
        }),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/splash.png",
        ),
      ),
    );
  }
}
