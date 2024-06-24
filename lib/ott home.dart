import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ott2 extends StatefulWidget {
  const  ott2({super.key});

  @override
  State< ott2> createState() => _ott2();
}
class _ott2 extends State< ott2> {
  List a=[
    "assets/movies1.jpeg",
    "assets/movies2.jpeg",
    "assets/movies3.jpeg",
    "assets/movies4.jpeg",
    "assets/movies5.jpeg",
    "assets/movies6.jpeg",
  ];

  List b=[
    "assets/movies7.jpeg",
    "assets/movies8.jpeg",
    "assets/movies9.jpeg",
    "assets/movies10.jpeg",
    "assets/movies11.jpeg",
    "assets/movies12.jpeg",
  ];

  List c=[
    "assets/movies13.jpeg",
    "assets/movies14.jpeg",
    "assets/movies15.jpeg",
    "assets/movies16.jpeg",
    "assets/movies17.jpeg",
    "assets/movies18.jpeg",
  ];
  List d=[
    "assets/movies1.jpeg",
    "assets/movies12.jpeg",
    "assets/movies10.jpeg",
    "assets/movies5.jpeg",
    "assets/movies9.jpeg",
    "assets/movies18.jpeg",
  ];
  List e=[
    "assets/movies2.jpeg",
    "assets/movies15.jpeg",
    "assets/movies17.jpeg",
    "assets/movies6.jpeg",
    "assets/movies11.jpeg",
    "assets/movies13.jpeg",
  ];

  List f=[
    "assets/movies5.jpeg",
    "assets/movies3.jpeg",
    "assets/movies7.jpeg",
    "assets/movies9.jpeg",
    "assets/movies14.jpeg",
    "assets/movies10.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Center(
          child: Container(
            height: 50,width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage("assets/primes.png")),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              child:  CarouselSlider.builder(
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
                 itemCount: a.length,
               itemBuilder: (BuildContext context,int index,int pageIndex) {
                   return Container(
                     height: MediaQuery.of(context).size.height/7,
                     width: MediaQuery.of(context).size.width/1,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage(a[index]),fit: BoxFit.fill)
                     ),
                   );
               },
             ),
            ),
            Center(
              child: DotsIndicator(
                  dotsCount:a.length,
                decorator: DotsDecorator(),
              ),
            ),
            SizedBox(height:5),
            Padding(
                padding:const EdgeInsets.only(right: 250),
              child: Text("MostPopular Movies",style:
              TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.white),),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: b.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(b[index]),fit: BoxFit.fill),
                            ),
                          ),

                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding:const EdgeInsets.only(right: 300),
              child: Text("WebSeries",style:
              TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.white),),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: c.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(c[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("First Episode Free",
                              style: TextStyle(fontSize:15,color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height:5),
            Padding(
                padding:const EdgeInsets.only(right:300),
             child: Text("New movies",style:
             TextStyle(fontSize:15,color:Colors.white),),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: d.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(d[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("Need to subscribe",
                              style: TextStyle(fontSize:15,color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height:5),
            Padding(
                padding:const EdgeInsets.only(right:300),
             child: Text("Action movies",style: TextStyle(
               color: Colors.white,fontSize: 15),),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: e.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(e[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("Need to subscribe",
                              style: TextStyle(fontSize:15,color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height:5),
            Padding(
              padding:const EdgeInsets.only(right:300),
              child: Text("Fantasy movies",style:
              TextStyle(fontSize:15,color:Colors.white),),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: f.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(f[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("Need to subscribe",
                              style: TextStyle(fontSize:15,color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
