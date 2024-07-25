import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:class_2/pages/hospital_detail_page.dart';
import 'package:class_2/pages/page2.dart';
import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset("assets/image/hospital.jpg",height: 100),
                  Text(
                    "Hospitals",
                    style: myStyle(26, primaryColor, FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allInfo.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.6),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => HospitalDetailPage(
                                hospitalModel: allInfo[index],
                              )));
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 50,
                              backgroundColor: primaryColor,
                              backgroundImage:
                                  AssetImage("${allInfo[index].url}"),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "${allInfo[index].hospitalName}",
                              style: myStyle(18, Colors.black, FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(
                                  "${allInfo[index].hospitalLocation}",
                                  style: myStyle(
                                    16,
                                    Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
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
    );
  }
}
