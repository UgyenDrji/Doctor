import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:flutter/material.dart';

class Covid19 extends StatelessWidget {
  const Covid19({super.key});

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
                    text: "care",
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          // width: double.infinity,
          padding: EdgeInsets.all(20),
          // margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset("assets/image/corona.png",height: 70,),
              SizedBox(height: 20,),
              Text(
                "COVID-19",
                style: myStyle(20, Colors.blue, FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Bhutan's Combat With Covid-19",style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Text("$covid",style: myStyle(16),),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/image/covid.jpg", height: 150,),
              SizedBox(
                height: 20,
              ),
              Text("$covid2", style: myStyle(16),),
              SizedBox(
                height: 20,
              ),
              Text(
                "Covid-19 Statics In Bhutan",
                style: myStyle(20, Colors.green, FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: statics.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 4,
                          child: Container(
                            width: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Total Covid Cases",
                                  style: myStyle(
                                      18, primaryColor, FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${statics[index].cases}",
                                  style:
                                      myStyle(18, Colors.grey, FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Total Death",
                                  style: myStyle(
                                      18, primaryColor, FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${statics[index].deaths}",
                                  style:
                                      myStyle(18, Colors.grey, FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Total Recovered",
                                  style: myStyle(
                                      18, primaryColor, FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${statics[index].recovered}",
                                  style:
                                      myStyle(18, Colors.grey, FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
              Text(
                "Symptoms of Covid-19",
                style: myStyle(20, Colors.blue, FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S1.png"),
                        ),
                        Text("FEVER",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S2.png"),
                        ),
                        Text("COUGH",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S3.png"),
                        ),
                        Text("RUNNY NOSES",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S4.png"),
                        ),
                        Text("BODY ACHES",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S5.png"),
                        ),
                        Text("SORE THROAT",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: primaryColor,
                          backgroundImage: AssetImage("assets/image/S6.png"),
                        ),
                        Text("SHORT BREATH",style: myStyle(14,Colors.green,FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("'STAY HOME STAY SAFE!'", style: myStyle(26,primaryColor,FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
