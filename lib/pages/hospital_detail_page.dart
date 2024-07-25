import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:class_2/modelClass/doc_model.dart';
import 'package:flutter/material.dart';

class HospitalDetailPage extends StatelessWidget {
  HospitalModel hospitalModel;
  HospitalDetailPage({super.key, required this.hospitalModel});

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
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "${hospitalModel.hospitalName}",
                style: myStyle(26, Colors.blue, FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                width: double.infinity,
                height: 250,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("${hospitalModel.url}"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "${hospitalModel.hospitalDescription}",
                style: myStyle(16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Our Services",
                style: myStyle(26, Colors.green, FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 1.2),
                  shrinkWrap: true,
                  itemCount: hospitalModel.services.length,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        // height: 70,
                        // width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${hospitalModel.services[index]}",
                              style: myStyle(16, primaryColor, FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(height: 20,),
              Text("Contact Us",style: myStyle(24,Colors.green,FontWeight.bold),),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call,size: 30,),
                  SizedBox(width: 10,),
                  Text("${hospitalModel.contactInfo}",style: myStyle(18,Colors.blue,FontWeight.bold),),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail_outlined,size: 30,),
                  SizedBox(width: 10,),
                  Text("${hospitalModel.mail}",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 16,color: Colors.blue),),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: MaterialButton(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height * 0.05,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  onPressed: () {},
                  child: Text(
                    "Make an Appointment",
                    style: myStyle(22, Colors.white, FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
