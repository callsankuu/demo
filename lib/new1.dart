import 'package:flutter/material.dart';
class new1 extends StatelessWidget {
  const new1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 30,color: Colors.cyan,),
        title: Text("FLUTTER"),
        actions: [
          Icon(Icons.menu,size: 30,color: Colors.cyan,),
          Icon(Icons.menu,size: 30,color: Colors.cyan,),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/abc.png"),
                fit: BoxFit.fill
              ),
            ),
            child: Column(
              children: [
                 Text("HOW ARE YOU"),
                Text("0K BYE"),
              ],

            ),

            ),




          Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "entername",
                border: OutlineInputBorder(

                )
              ),
            ),
          ),
        ],
      ),


    );
  }
}


