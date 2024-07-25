import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:class_2/pages/ambulance.dart';
import 'package:class_2/pages/covid1.dart';
import 'package:class_2/pages/medicine1.dart';
import 'package:class_2/pages/page2.dart';
import 'package:class_2/pages/page3.dart';
import 'package:class_2/pages/ptofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class doctor extends StatelessWidget {
  const doctor({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isDismissible: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(40),
                              width: double.infinity,
                              height: 750,
                              color: primaryColor,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(onTap: (){
                                    Navigator.pop(context);
                                  },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home,
                                          size: 30,
                                        ),
                                        Text(
                                          " HOME",
                                          style: myStyle(
                                              20, Colors.white, FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  InkWell(onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>ambulance()));
                                  },
                                    child: Row(
                                      children: [
                                        Icon(CupertinoIcons.car,size: 30,),
                                        Text(" AMBULANCE",
                                            style: myStyle(
                                                20, Colors.white, FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black,
                                  ),
                                  InkWell(onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Covid19()));
                                  },
                                    child: Row(
                                      children: [
                                        Icon(Icons.coronavirus_outlined,size: 30,),
                                        Text(" COVID-19",
                                            style: myStyle(
                                                20, Colors.white, FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black,
                                  ),
                                  InkWell(onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Hospital()));
                                  },
                                    child: Row(
                                      children: [
                                        Icon(Icons.local_hospital,size: 30,),
                                        Text(" HOSPITALS",
                                            style: myStyle(
                                                20, Colors.white, FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black,
                                  ),
                                  InkWell(onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicalShops()));
                                  },
                                    child: Row(
                                      children: [
                                        Icon(Icons.medical_services,size: 30,),
                                        Text(" MEDICINES",
                                            style: myStyle(
                                                20, Colors.white, FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          style: myStyle(20, primaryColor, FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "Health",
                            ),
                            TextSpan(
                                text: "Care",
                                style: myStyle(
                                    20, secondaryColor, FontWeight.bold)),
                            TextSpan(
                              text: "+",
                            ),
                          ]),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => PatientInfo()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue),
                            image: DecorationImage(
                                image: AssetImage("assets/image/doctor1.png"))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage("assets/image/doctors.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.47,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stay Healthy!",
                              style: myStyle(25, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "Stay Safe!",
                              style: myStyle(22, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "We provide good services to our patients. We are open 24/7. Do contact us any time you need.",
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.video_call,
                                  color: primaryColor,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Meet Online",
                                  style: myStyle(
                                      18, secondaryColor, FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Animated Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => ambulance()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icon/ambulance.gif"),
                          Text("Ambulances"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => Covid19()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icon/virus.gif"),
                          Text("Covid-19"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => Hospital()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icon/hospital.gif"),
                          Text("Hospitals"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => MedicalShops()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icon/medicine.gif"),
                          Text("Medicines"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Text of GridView
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Doctors",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Doctor GridView
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDocs.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => DocDetails(
                                  doctorModel: allDocs[index],
                                )));
                      },
                      child: Card(
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Hero(
                                tag: "${allDocs[index].imgUrl}",
                                child: CircleAvatar(
                                  maxRadius: 50,
                                  backgroundColor: primaryColor,
                                  backgroundImage:
                                      AssetImage("${allDocs[index].imgUrl}"),
                                ),
                              ),
                              Text(
                                "${allDocs[index].name}",
                                style:
                                    myStyle(22, Colors.black, FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${allDocs[index].speciality}",
                                style: myStyle(
                                  16,
                                  Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Text("${allDocs[index].rating}"),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
