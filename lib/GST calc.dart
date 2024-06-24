

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController GSTRatecontroller= TextEditingController();
  TextEditingController originalAmountcontroller=TextEditingController();

  double gstamount=0;
  double totalamount=0;
  double ingst=0;
  double totalamount2=0;

  bool clk=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("GST CALCULATOR",
          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
      ),
      body:Column(
      children: [
        SizedBox(height: 80,),
        Padding(
          padding: const EdgeInsets.only(left:30),
          child: Container(
            height: 100,
            width: 200,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: originalAmountcontroller,
              decoration: InputDecoration(
                  hintText: "Amount",
                  border: OutlineInputBorder()
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            height: 100,
            width: 200,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: GSTRatecontroller,
              decoration: InputDecoration(
                  hintText: "GST Percentage",
                  border: OutlineInputBorder()
              ),
            ),
          ),
        ),
       ElevatedButton(onPressed: (){
        setState(() {
        double amount= double.tryParse(originalAmountcontroller.text)??0;
        double gst = double.tryParse(GSTRatecontroller.text)?? 0;

        gstamount = (amount*gst)/100;
        totalamount = amount+gstamount;

        ingst=amount-(amount*(100/(100+gst)));
        totalamount2= amount-ingst;

        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Center(
                child: Text('ALERT FOR GST')),
            content: Container(
              height: 500,
              child: Column(
                children: [
                  Text("Exclusive GST",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("GST is: $gstamount"),
                  Text("Total is: $totalamount"),
                  SizedBox(height: 15,),
                  Text("Inclusive GST",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("GST is: $ingst"),
                  Text("Total is: $totalamount2"),
                ],
              ),
            ),
          ),
        );
       }
       );
        },
         child:Text("CALCULATE") ,
      ), ],
    ),
    );
  }
}
