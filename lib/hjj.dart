import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class hjj extends StatelessWidget {
  const hjj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/abc.png"),
            fit: BoxFit.fill,


          )
        ),
        child:Column(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/qwe.png"),
                  fit: BoxFit.fill,
                )),
              child: Container(

            ),


            ),
            Row(
                children: [
                  Container(
                    height:200,
                    width: 200,
                    child: Image.asset("assets/qwe.png"),),

                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/qwe.png"),),
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/qwe.png"),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/qwe.png"),),
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/qwe.png"),),
                        ]
                      ),
                ]
            ),

            ],
        ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: ClipRect(
                child:BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),

                child:Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration   (
                    border: Border.all(color: Colors.blue),
                  ),

                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset("assets/qwe.png",fit: BoxFit.fill,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                             child: Container(
                               width: 150,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                   icon: Icon(Icons.nature),
                                   hintText: "NAME",
                                 ),
                               ),
                             ), ),
                            Container(
                              height:75,
                              width: 100,
                              child: ElevatedButton(onPressed: (){},child: const Text("LOGIN"),)
                            ),



                          ],
                        ),
                      ],
                    ),
                  ),
              ),
              ),


            )

    ]
    )
    ));

  }
}






