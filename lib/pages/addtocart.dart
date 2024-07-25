import 'package:class_2/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/addtocart.json"),
            Text("Added to Cart",style: myStyle(18,primaryColor,FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
