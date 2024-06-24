import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const List <String> list = <String> ['1','2','3','4'];

class bad extends StatefulWidget {
  const bad({super.key});

  @override
  State<bad> createState() => _badState();
}

class _badState extends State<bad> {
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems =[
      DropdownMenuItem(child: Text("1"),value: "1",),
      DropdownMenuItem(child: Text("2"),value: "2",),
      DropdownMenuItem(child: Text("3"),value: "3",),
      DropdownMenuItem(child: Text("4"),value: "4",),
    ];
    return menuItems;
  }
  String selectedvalue="1";
  String dropdownvalue=list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor:Color(0xffabdbe3),
        title: Container(
          height: 50,width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              hintText: "Serach Amazon.in",
            ),
        ) ,
        ),
        actions: [Icon(Icons.qr_code),],
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("B O U L T"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Back in stock!Experience Ultimate...",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("-80% 999.00 Prime",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),Image(image: AssetImage("assets/airpod.png"),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  width: 900,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        aspectRatio: 25/15,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 06,
                        scrollDirection: Axis.horizontal,
                      ),itemCount: 6,
                    itemBuilder: (BuildContext con,index,a){
                        return  Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 1200,width: 1000,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/airpod.png"),
                              fit: BoxFit.fill),
                            ),
                          ),
                        );
                    }
                  ),
                ),
                Positioned(
                  top: 10,left: 10,
                  child: Container(
                    height: 50,width: 50,
                    child: Column(
                      children: [
                        Center(child: Text("84%",
                          style: TextStyle(color: Colors.black),),),
                        Center(child:Text("OFF",
                          style:TextStyle(color:Colors.black),)),
                      ],
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,right:10,
                  child: Container(height: 50,width: 50,
                    child: Icon(Icons.share),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: DotsIndicator(
                  dotsCount:5,
              decorator: DotsDecorator(),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text("3K+ bought in past month"),
            ),
            Padding(padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                Text("Visit the Boult store",
                  style:TextStyle(color: Colors.blueAccent),),
                Padding(padding: const EdgeInsets.only(left: 100),
                  child: Text("3.8"),
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 15,
                  itemCount: 5,
                  itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                  onRatingUpdate: (rating){} ),
                SizedBox(width: 20),
                Text("15167",style: TextStyle(color: Colors.blueAccent),)
              ],
            ),),
             Row(
               children: [
                 Expanded(
                   child: Padding(padding: const EdgeInsets.only(left: 20),
                      child: Text("boAT Airpodes 121 Pro Tws Earbuds Signature Sound,IPX5,TWS earbuds bluetooth wireless,low latency gaming"),
                   ),
                 ),
               ],
             ),
            SizedBox(height: 10,),
            Column(
              children: [
                Padding(padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 35,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:Colors.redAccent,),
                    child: Center(child:Text("LIMITED TIME DEALS",
                      style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ),
              ],
            ),
              Row(
                children:[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("-84%",style: TextStyle(color: Colors.red,fontSize: 30),),
                ),
                Container(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Text("\u20B9"),
                  ),
                ),
                Text("899",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan( text: "M.R.P.:\u20B95499",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,color: Colors.black,
                    ),


                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: RichText(
                text: TextSpan(
                    text: "EMI ",
                    style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
                    children: [
                      TextSpan(
                          text:"from \u20B9 200.No cost EMI available.",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)
                      ),
                      TextSpan(
                        text:" EMI Options",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height:15,),
            Padding(
                padding:const EdgeInsets.only(left: 20),
               child: Text("Inclusive of all taxes",
                 style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:const EdgeInsets.only(left: 20),
                 child: Text("Total\u20B9 899",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20 ),
              child: RichText(text: TextSpan(
                text: "FREE delivery",
                style: TextStyle(color: Colors.blueAccent),
                  children: [
                    TextSpan(
                      text: "Thursday,",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "18 April.",
                        ),
                      ],
                    ),
                  ]
              ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Icon(Icons.location_on_outlined),
                ),
                Text("Deliver to shiva-chinnathadagham 641108",
                  style:TextStyle(color: Colors.blueAccent),),
              ],
            ),
            SizedBox(height:15),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                 child: RichText(
                   text: TextSpan(
                     text: "In stock",style: TextStyle(color: Colors.green),
                   ),
                 ),
            ),
            SizedBox(height: 10),
            Padding(padding: const EdgeInsets.only(right: 300),
              child: Container(height: 40,width:100,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),),
                child: Row(
                  children: [Padding(padding:const EdgeInsets.only(left: 20),
                    child:Text("Qty:",
                      style: TextStyle(fontSize: 10,
                          fontWeight: FontWeight.bold)),
                  ),
                    DropdownButton<String>(
                      value: dropdownvalue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 15,
                      style: const TextStyle(color: Colors.blueGrey),
                      onChanged: (String? value){
                        setState(() {
                          dropdownvalue = value!;
                        });
                      },
                      items:list.map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child:Text (value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
            ),
            ),
            SizedBox(height:20),
            Container(
              height: 50,width: 400,
              child: Center(child: Text("Add to cart")),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,width: 400,
              child: Center(child: Text("Buy Now")),
              decoration: BoxDecoration(
                color: CupertinoColors.activeOrange,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 20),
                 child: Icon(Icons.lock),),
                Text("Secure transaction",style: TextStyle(color: Colors.blue),)
              ],
            ),
            Row(
              children: [
                Padding(padding:const EdgeInsets.only(left:25),
                 child:Text("Ships from",style: TextStyle(color: Colors.black),),
                ),
                Padding(padding: const EdgeInsets.only(left: 60),
                 child: Text("Amazon",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 25),
                 child: Text("Sold by",style: TextStyle(color: Colors.black),),
                ),
                Padding(padding: const EdgeInsets.only(left: 80),
                 child: Text("Appario Retail Private Ltd",
                   style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left:25 ),
                  child: Text("Deatils",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 35),
                child: Text("Gift-wrap available"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
