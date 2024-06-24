import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class csk extends StatelessWidget {
  const csk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/abc.png"),
            fit: BoxFit.fill
          ),

        ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/qwe.png"),
                ),
              ),
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                        border:Border.all(),
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/qwe.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                               child:Column(
                               children: [
                                Text("HI DOOD"),
                            ],
                          ),
                          ),
                          Text("data")
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/qwe.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                            children: [
                              Text("HI DOOD"),
                            ],
                          ),
                            ),
                          Text("data")
                        ],
                      ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child:
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset("assets/qwe.png"),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset("assets/qwe.png"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset("assets/qwe.png"),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset("assets/qwe.png"),

                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 180,
                                          child: Image.asset("assets/qwe.png"),
                                        ),
                                      ],
                                    ),
                                      ],
                                    ),

                                  ],
                                ),
                            Column(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 150,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          icon: Icon(Icons.nature),
                                          hintText: "NAME",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 100,
                                      child: ElevatedButton(onPressed: (){},child: const Text("LOGIN"),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                                  ],
                                ),
                            ),
                ),
              ),
                ),
          ]
           ),
           )
    );

  }
}


