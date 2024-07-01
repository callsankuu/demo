import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  List a=[
    "hi",
    "how",];
  List b=[
    "assets/abc.png",
    "assets/qwe.png",
    "assets/abc.png",
    "assets/qwe.png",
    "assets/abc.png",
    "assets/qwe.png",
    "assets/abc.png",
    "assets/qwe.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: CarouselSlider.builder(
              itemCount: a.length,
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,

                  scrollDirection: Axis.horizontal,
                ),
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                 {
                   return Container(
                    child: Column(
                      children: [
                        Text(a[itemIndex]),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image:DecorationImage(image: AssetImage(b[itemIndex]),fit: BoxFit.fill) ),
                        )
                      ],
                    ));
                  }
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: b.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage(b[index]),fit:BoxFit.fill)
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 400,
            width: 400,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3
                ),
                itemCount: b.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(b[index]),fit: BoxFit.fill)
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

