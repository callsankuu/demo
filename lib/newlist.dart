import 'package:demo/listdata.dart';
import 'package:flutter/material.dart';
class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();

}

 class _oneState extends State<one> {
  TextEditingController Name= TextEditingController();
  TextEditingController Email= TextEditingController();
  TextEditingController Password=TextEditingController();

  final Listnew = [];

 void anotherpage(String data){
   print(data);
   Navigator.push(
       context,MaterialPageRoute(
       builder:(context)=>poi(
         name:data, sankar: '',
       ),
   ),
   ).then((dataa) {
     if (dataa != null){
       setState(() {
         Listnew[Listnew.indexWhere((element) =>element == data)]=dataa;
       });
     }
   });
 }



 void adds(){
    String con1 = Name.text;
    String con2 = Email.text;
    String con3 = Password.text;
    setState(() {
      Listnew.add('$con1\n$con2\n$con3');
      Name.clear();
      Email.clear();
      Password.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ONE LIST TO OTHER LIST"),
        centerTitle: true,
      ),
        body: Column(
         children: [SizedBox(height: 50),
            Center(
               child: Container(
                 width: 200,
                 child: TextFormField(
                  controller: Name,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    hintText: "name"
                     ),
                ),
                ),),
               SizedBox(height: 30,),
              Center(
                 child: Container(
                    width: 200,
                   child: TextFormField(
                    controller:Email ,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      hintText: "mail"
                    ),
                    ),
                    ),),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                            width: 200,
                            child: TextFormField(
                              controller:Password ,
                              decoration: InputDecoration(
                              border: OutlineInputBorder(),
                                  hintText: "password"
                ),
            ),
            ),),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                  adds();
          },
              child: Text("ADD")),
          SizedBox(height: 40),
          Container(
            height: 300,width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
              itemCount: Listnew.length,
                itemBuilder: (context ,index )=>
                    GestureDetector(
                      onTap: (){
                        anotherpage(Listnew[index]);
                      // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      //     builder: (context) => poi(
                      //      name:name,
                      //     )));
                      },
                      child: Card(
                        elevation: 80,
                       child: Column(
                        children: [
                        Text(Listnew[index],
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.bold ), ),
                          Row(
                           children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  Listnew.removeAt(index);
                                });
                               },
                                  icon: Icon(Icons.delete)),
                              IconButton(onPressed: (){
                                setState(() {
                                  anotherpage(Listnew[index]);
                                });
                              },
                                  icon: Icon(Icons.edit)),
                            ],
                          ),
                      ],
                       ),),
                    ),
            ),
        ),
    ] ));
  }
}
