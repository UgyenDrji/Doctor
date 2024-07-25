import 'dart:async';

import 'package:class_2/constant.dart';
import 'package:class_2/pages/bottom_navigation_bar.dart';
import 'package:class_2/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (builder) => buttomnavbar()),
                (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/splash.json",),
            RichText(
              text: TextSpan(
                  style: myStyle(26, primaryColor, FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "Med",
                    ),
                    TextSpan(
                        text: "Me",
                        style: myStyle(26, secondaryColor, FontWeight.bold)),
                    TextSpan(
                        text: "Care",
                        style: myStyle(26,primaryColor,FontWeight.bold)
                    ),
                    TextSpan(
                      text: "+",
                      style: myStyle(26, secondaryColor, FontWeight.bold),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
