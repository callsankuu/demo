import 'package:demo/ott%20home.dart';
import 'package:flutter/material.dart';

import 'main.dart';
void main() {
  runApp(ott1());
}
class ott1 extends StatefulWidget {
  const ott1({super.key});

  @override
  State<ott1> createState() => _ott1State();
}

class _ott1State extends State<ott1> {


  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE",style:TextStyle(color: Colors.blue,
        fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.drive_file_rename_outline),
                  hintText: "name"
                ),
              ),
            ),
          ) ,
          SizedBox(height: 25,),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.mail),
                  hintText: "mail",
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
           Center(
            child: Container(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    icon:  Icon(Icons.password),
                  hintText: "password"
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ott2()),
            );
          },
              child:Text("LOGIN"))
        ],
      ),
    );
  }
}
