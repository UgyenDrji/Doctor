import 'package:class_2/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Text("Patient Profile", style: myStyle(26,primaryColor,FontWeight.bold),),
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: primaryColor, width: 2)),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.blue),
                                    image: DecorationImage(
                                        image: AssetImage("assets/image/patient.jpg"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Name: ",
                                        style: myStyle(20, Colors.black, FontWeight.bold),
                                      ),
                                      Text("Elezabith",style: myStyle(18),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Sex: ",
                                          style: myStyle(20, Colors.black, FontWeight.bold)),
                                      Text("Female",style: myStyle(18),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Age: ",
                                          style: myStyle(16, Colors.black, FontWeight.bold)),
                                      Text("27",style: myStyle(18),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,size: 30,),
                                      Text(" Gyelposhing, Mongar",
                                          style: myStyle(18, Colors.black,)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.call,size: 30,),
                                      Text(" 17265432",
                                          style: myStyle(16, Colors.black,)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.mail,size: 30,),
                                      Text(" Sergyel12@gmail.com",
                                          style: myStyle(18, Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Disease:", style: myStyle(20,CupertinoColors.black,FontWeight.bold),),
                                      Text(" Kidney Disease",
                                          style: myStyle(16)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
