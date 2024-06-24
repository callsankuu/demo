

import 'package:flutter/material.dart';
class HAI extends StatelessWidget {
  const HAI({super.key, required String data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/abc.png"),
                fit: BoxFit.fill
              )
            ),

          ),
        ),

      ),
      body: Column(
         children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 180,
              child: Image.asset("assets/abc.png"),
            ),
            Container(
              height: 300,
              width: 180,
              child: Image.asset("assets/abc.png"),
    ),

        ]
    ),
          Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.menu),
                  hintText: "ENTERNAME",
                  border: OutlineInputBorder()
              ),
            ),
          ),
           TextFormField(),
          ElevatedButton(onPressed: (){}, child: Text("WELCOME")),
           Container(
           padding: const EdgeInsets.all(4.0),
           child: TextFormField(
             decoration: InputDecoration(
            icon: Icon(Icons.menu),
            hintText: "PHONE NO",
           border: OutlineInputBorder()
    ),

  ),
),
           Container(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.mediation),
                hintText: "LOGIN",
                border: OutlineInputBorder()
              ),
            ),
          )

    ]
    ),

    );
  }

}









