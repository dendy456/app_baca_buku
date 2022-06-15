import 'dart:math';
import 'package:app_baca_buku/screen/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MenuSamping extends StatefulWidget {
  MenuSamping({Key? key}) : super(key: key);

  @override
  State<MenuSamping> createState() => _MenuSampingState();
}

class _MenuSampingState extends State<MenuSamping> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 120, 196, 125),
                Color.fromARGB(255, 20, 192, 26),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    body: Center(
                      child: NavigasiBawah(),
                    ),
                  ),
                ));
              }),
        ],
      ),
    );
  }
}
