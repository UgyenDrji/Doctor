import 'package:class_2/constant.dart';
import 'package:class_2/data/doc_data.dart';
import 'package:class_2/modelClass/doc_model.dart';
import 'package:class_2/pages/addtocart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MedicalProducts extends StatelessWidget {
  List medicines= [];
  MedicalProducts({super.key, required this.medicines});

  
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
          margin: EdgeInsets.only(top: 10,bottom: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("All Medicines", style: myStyle(24, primaryColor, FontWeight.bold),),
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.55,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: medicines.length,
                itemBuilder: (context, index) {
                  Medicine medicine = medicines[index];
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            medicine.medicineUrl,
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            medicine.medicineName,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5,),
                          Text("${medicine.weight}", style: myStyle(16),),
                          SizedBox(height: 5),
                          Text(
                            "Price: \$${medicine.price}",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AddPage()));
                            },
                            child: Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.cart,color: Colors.red,),
                                  SizedBox(width: 15,),
                                  Text("Add",style: myStyle(16,Colors.white,FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
