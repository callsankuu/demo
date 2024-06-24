import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class cal extends StatefulWidget {
  const  cal({super.key});

  @override
  State<cal> createState() => _calState();

}
class _calState extends State<cal> {
  TextEditingController hai = TextEditingController();
  String num1="";
  String num2="";
  String oper="";
  bool clk = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.compare_arrows),
        centerTitle: true,
          title:  Text("calculator"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children:[
          Container(
            height:50,
            width: 350,
            child: TextFormField(
              controller: hai,
              style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 200,width: 300,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      num1="";
                      num2="";
                      oper="";
                      hai.text ="";
                      clk = false;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("AC",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                     setState(() {
                       hai.text = "";
                     });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Icon(Icons.backspace_outlined,color: Colors.white,)
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                     setState(() {
                       oper = "%";
                       hai.text ="%";
                       clk =true;
                     });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("%",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        oper ="/";
                        hai.text="/";
                        clk = true;
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("/",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk) {
                        num2 +="7";
                        hai.text =num2;
                      } else{
                        num1 +="7";
                        hai.text =num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: Text("7",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk) {
                        num2 +="8";
                        hai.text =num2;
                      } else{
                        num1 +="8";
                        hai.text =num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk) {
                        num2 +="9";
                        hai.text =num2;
                      } else{
                        num1 +="9";
                        hai.text =num1;
                      }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("9",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        oper = "*";
                        hai.text ="*";
                        clk=true;
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ), child: Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                    if (clk){
                      num2 +="4";
                      hai.text=num2;
                    }
                    else{
                      num1 +="4";
                      hai.text=num1;
                    }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("4",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk){
                        num2 +="5";
                        hai.text =num2;
                      }
                      else{
                        num1 +="5";
                        hai.text =num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                     if(clk){
                       num2 +="6";
                       hai.text =num2;
                     }
                     else{
                       num1 +="6";
                       hai.text =num1;
                     }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        oper ="-";
                        hai.text ="-";
                        clk=true;
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if(clk){
                        num2 +="1";
                        hai.text=num2;
                      }
                      else{
                        num1 +="1";
                        hai.text=num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                     if(clk){
                       num2 +="2";
                       hai.text=num2;
                     }
                     else{
                       num1 +="2";
                       hai.text=num1;
                     }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk){
                        num2 +="3";
                        hai.text =num2;
                      }
                      else {
                        num1 += "3";
                      hai.text = num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        oper="+";
                        hai.text="+";
                        clk = true;
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      hai.text ="";
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Icon(Icons.square_outlined,color: Colors.white,)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if(clk){
                        num2 += "0";
                        hai.text =num2;
                      }
                      else{
                        num1 += "0";
                        hai.text=num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      if (clk){
                        num2 +=".";
                        hai.text =num2;
                      }
                      else{
                        num1 +=".";
                        hai.text =num1;
                      }
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ), child: Text(".",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),

                ),Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        oper = "√";
                        hai.text ="√";
                        clk=true;
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ), child: Text("√",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding:const EdgeInsets.only(left: 75),
                child: SizedBox(height: 50,width: 80,
                  child: ElevatedButton(onPressed: (){
                    hai.text ="|";
                    oper ="|";
                    clk =true;
                  },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child:Text("Mod",style:TextStyle
                        (fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(5.0),
                child: SizedBox(height: 50,width: 80,
                  child: ElevatedButton(onPressed: (){
                    double a = double.parse(hai.text);
                    if(a.isNegative)
                    {
                      hai.text=a.abs().toString();
                    }
                    else{
                      hai.text=(a*-1).toString();
                    }
                  },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child:Text("+/-",style:TextStyle
                        (fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ElevatedButton(onPressed: ()
                {
                  if(oper=="+"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=a+b;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="*"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=a*b;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="-"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=a-b;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="/"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=a/b;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="√"){
                    double a=double.parse(num1);
                    num c= pow(a,1/2);
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="%"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=b%a*100;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="|"){
                    double a=double.parse(num1);
                    double b=double.parse(num2);
                    double c=a%b;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  else if(oper=="+/-"){
                    double a=double.parse(num1);
                    double c =-a;
                    hai.text= c.toString();
                    num1=hai.text;
                  }
                  clk = false;
                  num2 = "";
                },
                    child: Text("=",style: TextStyle
                      (fontSize: 40,color: Colors.green),),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



