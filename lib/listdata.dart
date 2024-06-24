

import 'package:flutter/material.dart';



class poi extends StatefulWidget {
  final String? name;
  // final csk;
  // final sankar;
  const poi({super.key, this.name, required String sankar, });

  @override
  State<poi> createState() => _poiState();
}

class _poiState extends State<poi> {

 late TextEditingController nn;
 late TextEditingController pp;
 late TextEditingController ee;



  @override
  void initState() {
    // TODO: implement initState

    List<String> q = widget.name!.split("\n");

    nn = TextEditingController(text: q[0]);
    pp = TextEditingController(text: q[1]);
    ee = TextEditingController(text: q[2]);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data",style:
        TextStyle(color:Colors.blue,fontWeight:FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [SizedBox(height: 50,),
          Container( width: 200,
            child: TextFormField(controller:nn,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            ),
          ),
          SizedBox(height: 30,),
          Container(width: 200,
            child: TextFormField(controller:pp,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(width: 200,
            child: TextFormField(controller:ee,
              decoration:InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 200,),
          Center(
            child: Text("${widget.name}",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                 setState(() {
                   String dataa = '{$nn.text}\n{$pp.text}\n{$ee.text}';
                   Navigator.pop(context,dataa);
                 });
                  },
                    child:Text("EDIT")),
                SizedBox(width: 50),
                ElevatedButton(onPressed: (){
                  setState(() {
                  });
                },
                    child:Text("DELETE")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

