import 'package:class_2/data/doc_data.dart';
import 'package:class_2/pages/ambulance.dart';
import 'package:class_2/pages/page1.dart';
import 'package:class_2/pages/page2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class buttomnavbar extends StatefulWidget {
  const buttomnavbar({super.key});

  @override
  State<buttomnavbar> createState() => _buttomnavbarState();
}

class _buttomnavbarState extends State<buttomnavbar> {
  List list = [
    doctor(),
    ambulance(),
    DocDetails(doctorModel: allDocs[0]),
  ];
  List<Icon> allItems = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Colors.blue,
        // backgroundColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        index: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allItems,
      ),
    );
  }
}
