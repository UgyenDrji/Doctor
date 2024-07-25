import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:class_2/pages/medicine2.dart';
import 'package:flutter/material.dart';

class MedicalShops extends StatelessWidget {
  const MedicalShops({super.key});

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/image/medical.jpg",
                height: 80,
              )),
              Text(
                "Medical Shops",
                style: myStyle(26, primaryColor, FontWeight.bold),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allShops.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => MedicalProducts(
                                medicines: allMeds[index])));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 4,
                              margin:
                                  EdgeInsets.only(right: 5, top: 10, bottom: 10),
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "${allShops[index].shopUrl}"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Text(
                              "${allShops[index].shopName}",
                              style: myStyle(20,primaryColor,FontWeight.bold)
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,size: 30,),
                                SizedBox(width: 20,),
                                Text(
                                  "${allShops[index].proprietor}",
                                  style: myStyle(16,secondaryColor,FontWeight.bold)
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 30,),
                                SizedBox(width: 20,),
                                Text(
                                  "${allShops[index].location}",
                                  style: myStyle(16,secondaryColor,FontWeight.bold)
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.call,size: 30,),
                                SizedBox(width: 20,),
                                Text(
                                  "${allShops[index].contactNo}",
                                    style: myStyle(16,secondaryColor,FontWeight.bold)
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.mail_outlined, size: 30,),
                                SizedBox(width: 20,),
                                Text(
                                  "${allShops[index].mail}",
                                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: primaryColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
