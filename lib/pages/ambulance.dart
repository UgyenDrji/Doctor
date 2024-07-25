import 'package:class_2/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ambulance extends StatelessWidget {
  const ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Health",
                ),
                TextSpan(
                    text: "Care",
                    style: myStyle(26, secondaryColor, FontWeight.bold)),
                TextSpan(
                  text: "+",
                  style: myStyle(26, primaryColor, FontWeight.bold),
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
                child:
            Lottie.asset("assets/animation/ambulance.json")),
            Lottie.asset("assets/animation/call.json"),
            Text("Call", style: myStyle(28,secondaryColor,FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
