import 'package:flutter/material.dart';
class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert!"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width *0.8,
                color: Colors.deepOrange,
                onPressed: (){
                  showDialog(context: context, builder: (context){
                   return AlertDialog(
                     title: Text("Do you want to exit?"),
                     actions: [
                       TextButton(onPressed: (){
                         Navigator.pop(context);
                       }, child: Text("Yes")),
                       TextButton(onPressed: (){}, child: Text("No"))
                     ],
                   ) ;
                  });
                },
              child: Text("Show Dialog", style: TextStyle(
                color: Colors.white,
                fontSize: 22
              ),),
                )
          ],
        ),
      ),
    );
  }
}
