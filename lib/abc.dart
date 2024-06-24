import 'package:demo/111.dart';
import 'package:demo/123.dart';
import 'package:demo/csk.dart';
import 'package:demo/hello.dart';
import 'package:demo/hjj.dart';
import 'package:demo/qwer.dart';
import 'package:demo/spotify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  List pages=[
    ind(),
    instagram(),
    hits(),
  ];

  int currentindex=0;
  void mi(index){
    setState(() {
      currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("BOTTOM NAVIGATION FLUTTER"),
        backgroundColor: Colors.white,
      ),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "home",backgroundColor: Colors.blue) ,
          BottomNavigationBarItem(icon: Icon(Icons.login),
          label: "logIN",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.login),
          label: "music",backgroundColor: Colors.cyan),
        ],
        onTap:mi,
        currentIndex: currentindex,
      ),
    );  
  }
}
