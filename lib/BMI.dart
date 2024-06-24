import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController heigh = TextEditingController();
  TextEditingController weigh = TextEditingController();

  double h1= 0;
  double h2= 0;
  double bmi=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator",
          style: TextStyle(color: Colors.blueAccent),),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Padding(padding:const EdgeInsets.only(left:30),
          child: Container(
            height: 100,width: 250,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: heigh,
              decoration: InputDecoration(
                hintText: "Height in cm",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ),
          Padding(padding:const EdgeInsets.only(left:30),
            child: Container(
              height: 100,width: 250,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: weigh,
                decoration: InputDecoration(
                  hintText: "Weight in kg",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
             setState(() {
               double hei = double.tryParse(heigh.text)??0;
               double wei = double.tryParse(weigh.text)??0;
                     h1= hei/100;
                     h2 = h1*h1;
                     bmi=wei/h2;

                     if (bmi<18.5)
                   {
                  showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context)
                  {
                     return Container(
                       color: Colors.yellowAccent,
                       height: 200,
                       width: double.infinity,
                       child: Center(
                         child: Column(
                           children: [
                             SizedBox(height: 35,),
                             Center(child: Text("Under Weight ")),
                             Text("RESULTS: $bmi",
                               style: TextStyle(fontWeight:
                               FontWeight.bold, fontSize: 40,
                                   color: Colors.black),
                             ),],
                               ),
                               ),);
                                    }
                                    );
                                    }
                      else if(bmi>=18.5 && bmi<=24.9){
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context)
                            {
                              return Container(
                                color:Colors.green,
                                height: 200,
                                width: double.infinity,
                                 child: Center(
                                   child: Column(
                                     children: [
                                       SizedBox(height:35),
                                       Center(child: Text("Normal"),),
                                        Text("RESULTS: $bmi",
                                     style: TextStyle(fontWeight:
                                     FontWeight.bold, fontSize: 40,
                                         color: Colors.black),),
                                     ],
                                  ),
                                ),
                              );
                            }
                        );
                     }
                     else if(bmi>=25)
                     {
                       showModalBottomSheet(
                        context: context,
                         builder: (BuildContext context)
                         {
                          return Container(
                            color: Colors.red,
                            height: 200,
                            width: double.infinity,
                            child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height:35),
                                    Center(child: Text("over weight"),),
                                    Text("RESULTS:$bmi",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        fontSize: 40,color: Colors.black,
                                    ),
                                    ),
                                  ],
                                ),
                            ),
                          );
                         }
                       );
                     }
                   }
                     );
                  },
              child: Text("Calculate"),
          ),
        ],
      ),
    );
  }
}
