

import 'package:carousel_slider/carousel_options.dart';
import 'package:demo/amazon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/widgets.dart';
class ind extends StatefulWidget {
  const ind({super.key});

  @override
  State<ind> createState() => _indState();
}

class _indState extends State<ind> {
  List a=[
    "assets/mobile.png",
    "assets/deals.png",
    "assets/fresh.png",
    "assets/home.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        title: Container(
          height: 50,
          width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                hintText: "Search Amazon.in"
            ),
          ),
        ),
        actions: [
        Icon(Icons.qr_code),
      ],
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ListTile(
               tileColor: Colors.cyanAccent[100],
                leading: Icon(Icons.location_on_outlined),
                title: Text("Deliver to Shiva-CBE 641108"),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext a,b){
                   return GestureDetector(
                     onTap:(){
                       Navigator.push(context,
                           MaterialPageRoute(builder:(context) => bad() ),);
                   },
                    child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      children: [
                      Container(
                        height: 50,
                        width: 75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/mobile.png"),
                          ),
                        ),
                      ),
                      Text("mobile "),
                    ],
                  ),
                   ),);
                },
              ),
            ),
            Container(

                child: CarouselSlider.builder(
                    options: CarouselOptions(
                    height:300,
                      aspectRatio: 16/9,
                      viewportFraction: 2.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  itemCount: 6,
                  itemBuilder: (BuildContext con,index,a) {
                      Center(
                      child: DotsIndicator(
                        dotsCount: 8,
                        decorator: DotsDecorator(),
                      ),
                    );
                      return  GestureDetector(
                          onTap:(){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) => bad() ),);
                      },
                        child:Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/home.png",),fit: BoxFit.fill)
                        ),
                        ),);
                    }
                )
            ),
            Center(
              child: DotsIndicator(
                  dotsCount: 8,
             decorator: DotsDecorator(
               color: Colors.black,
               activeColor: Colors.white70,
             ),
              ),

            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext a,b){
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                     child: Container(
                    height: 50,
                    width: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("assets/fresh.png"),
                          fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  );
                }
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("deals for you",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 600,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 6.0,
                        childAspectRatio:1/1.5,
                        crossAxisCount: 2,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext cont,int index){
                        return  GestureDetector(
                            onTap:(){
                          Navigator.push(context,
                            MaterialPageRoute(builder:(context) => bad() ),);
                        },
                          child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/home.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child:Text("today offers",
                                      style: TextStyle(color: Colors.black),),
                                  ),
                              ),
                            ],
                          ),
                          ));
                      }
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                     padding: EdgeInsets.only(left: 15),
                      child: Text("Curated Stores for you",
                       style: TextStyle(fontWeight: FontWeight.bold),),
              ),
                Container(
                  height: 400,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisSpacing: 6.0,
                       childAspectRatio:1/1.5,
                        crossAxisCount: 2,
                      ),
                        itemCount: 6,
                        itemBuilder: (BuildContext cont,int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/amazon prime.png"),
                                  fit: BoxFit.fill),
                                ),
                              ),
                                Container(
                                  height: 30,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Text("25%Off limited time deal",
                                      style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                            ],
                          ),
                        );
                  }
                      ),

                ),

              ],
            ),
          ],
        ),
      ) ,
    );
  }
}



