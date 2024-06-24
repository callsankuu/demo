import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'listdata.dart';
class list1 extends StatefulWidget {
  const list1({super.key,});

  @override
  State<list1> createState() => _list1State();
}
TextEditingController shiva =TextEditingController();
List a=[];
List b=[];
List c=[];
TextEditingController sankar = TextEditingController();
TextEditingController csk = TextEditingController();

class _list1State extends State<list1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LIST",style:
        TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                controller:shiva,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                  controller: csk,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                  controller: sankar,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height:30),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    a.add(shiva.text);
                    a.add(csk.text);
                    a.add(sankar.text);
                    print(a);
                  });
                },
                child: Text("ADD",
                  style: TextStyle(fontWeight:FontWeight.bold),),
            ),
            SizedBox(height:50),
            Container(
              height:250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child:ListView.builder(
                  itemCount: a.length,
                  itemBuilder: (Buildcontext, index)=>Card(
                    elevation: 30,
                    child:ListTile(
                      title:Column(
                        children: [
                          Text(a[index]
                          ),
                          // Text(b[index]),
                          // Text(c[index]),
                        ],
                      ),
                      trailing:Container(
                        width: 80,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){
                              setState(() {
                                a.removeAt(index);
                              });
                              },
                                icon:Icon(Icons.delete),),
                            IconButton(onPressed: (){
                               setState(() {
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context)=>AlertDialog(
                                      title: Text("edit"),
                                      actions: [
                                        TextFormField(
                                          controller: sankar,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          )
                                        ),
                                        ElevatedButton(
                                            onPressed: (){
                                              setState(() {
                                                  a[index]=sankar.text;
                                                  shiva.clear();
                                                   Navigator.of(context).pop();
                                              });
                                            },
                                            child: Text("OK",
                                              style: TextStyle(fontWeight: FontWeight.bold),)
                                        ),
                                      ],
                                    ),
                                );
                               });
                            },
                                icon:Icon(Icons.edit)),
                          ],
                        ),
                      ) ,
                        onTap: ()
                        {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder:(context)=>poi(
                          //         sankar: a[index].toString(), name: '',),));
                        }

                    ),
                  ),
              ),),
            SizedBox(height: 30),
            Padding(padding:EdgeInsets.only(left: 50),
             child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  a.sort((a,b)=> int.parse(b).compareTo(int.parse(a)));

                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>AlertDialog(
                        title: Center(
                          child: Text("MAXIMUM")),
                         actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          },
                              child: Text("OK"))
                        ],
                        content: Container(
                          height: 200,
                          child: Text("Maximum number is :${a.first}"),
                        ),
                  ));
                },
                    child: Text("MAXIMUM")),
                SizedBox(width: 40),
                Padding(padding:EdgeInsets.all(25),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        a.sort((a,b)=> int.parse(b).compareTo(int.parse(a)));

                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>AlertDialog(
                              title: Center(
                                child: Text("MINIMUM"),),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                    child: Text("OK"))
                              ],
                              content: Container(
                                height: 200,
                                child: Text("Minimum number is :${a.last}"),
                              ),
                            ));
                      },
                          child: Text("MINIMUM")),
                    ],
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 20),
            Padding(padding:EdgeInsets.only(left: 40),
             child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  a.sort((a,b)=> int.parse(a).compareTo(int.parse(b)));

                  showDialog<String>(
                      context: context,
                      builder: (BuildContext  context)=>AlertDialog(
                        title: Center(
                          child: Text("ASCENDING"),),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          },
                              child: Text("OK")),
                        ],
                        content: Container(
                          height: 200,
                          child: Text("Ascending number is:$a"),
                        ),
                      ),
                  );
                 },
                    child: Text("ASCENDING")),
                SizedBox(width: 40),
                Padding(padding: EdgeInsets.only(left: 20),
                 child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      a.sort((a,b)=> int.parse(b).compareTo(int.parse(a)));

                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context)=>AlertDialog(
                          title: Center(
                            child: Text("DESCENDING"),),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                                child: Text("OK")),
                          ],
                          content: Container(
                            height: 200,
                            child: Text("Descending number is:$a"),
                          ),
                        ),
                      );
                    },
                      child: Text("DESCENDING"),
                    ),
                  ],
                ),
                ),
              ],
            ),
            ),
            SizedBox(height: 40),
            Padding(padding:EdgeInsets.only(left: 40),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){

                    b=a.where((element) => int.parse(element) > 5).toList();

                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context)=>AlertDialog(
                          title: Center(
                            child: Text(">5"),),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                                child: Text("OK"))
                          ],
                          content:Container(
                            height: 200,
                            child: Text(">5:$b"),
                          ) ,
                        ),
                    );
                  },
                      child: Text("Greater than 5")),

                  Padding(padding:EdgeInsets.only(left: 40),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){

                          b=a.where((element) => int.parse(element) < 5).toList();

                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context)=>AlertDialog(
                              title: Center(
                                child: Text("<5"),),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                    child: Text("OK"))
                              ],
                              content:Container(
                                height: 200,
                                child: Text(">5:$b"),
                              ) ,
                            ),
                          );
                        },
                            child: Text("Less than 5")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}



