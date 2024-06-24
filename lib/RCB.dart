import 'package:demo/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 class RCB extends StatefulWidget {
  const RCB({super.key});

  @override
  State<RCB> createState() => _RCBState();
}

class _RCBState extends State<RCB> {
   bool _isvisible=true;
   final _key=GlobalKey<FormState>();
   @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.menu_book),
         centerTitle: true,
         title: Text("FLUTTER APP"),
         actions: [
           Icon(Icons.image)
         ],
       ),
       body: Form(
         key: _key,
         child: Column(
           children: [
             SizedBox(
               height: 50,
               width: 100,
             ),
             TextFormField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 icon: Icon(Icons.near_me),
                 hintText: "NAME",
               ),
               validator:(value){
                 if (value!.isEmpty||value==null){
                   return "pls enter correct name";
                 }
               } ),
             SizedBox(
               height: 50,
               width: 100,
             ),
             TextFormField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 icon: Icon(Icons.mail),
                 hintText: "MAIL ID",
               ),
               validator: (value){
                 if (value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value));
                 return "pls enter mailID";
               }
             ),
             SizedBox(
               height: 50,
               width: 100,
             ),
             TextFormField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "PHONE NO",
                 icon: Icon(Icons.phone),
               ),
               validator: (value){
                 if(value?.length!=10);
                 return "pls enter phone no";
               }
             ),
             SizedBox(
               height: 50,
               width: 100,
             ),
             TextFormField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 icon: Icon(Icons.password),
                 hintText: "PASSWORD",
               ),
                 validator: (value){
                 if (value?.length!=6);
                 return "pls enter password";
                 }
             ),
             ElevatedButton (onPressed: (){
               if(_key.currentState!.validate()) {
                 ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(content: Text("VALIDATE SUCCESSFULLY"))
                   );
               }
               else{ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(content:Text("DATA INCORRECT"))
               );
               }
               },
               child: Text("LOGIN")
             ),
           ],
         ),
       ),
     );




  }
}


class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {

   bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            visible: _show,
              child: Container(
                height: 100,width:100 ,color: Colors.cyanAccent,)),
          ElevatedButton(onPressed: (){
            setState(() {
              _show = !_show;
            });
          }, child: Text("ok")),
        ],
      ),
    );
  }
}
class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {
   bool _show=false;

   final ctrl = TextEditingController();
   a()
   {setState(() {

     ctrl.text.isNotEmpty ? _show = true : _show = false;
   });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_book),
        title: Text("FLUTTER"),
        actions: [
          Icon(Icons.abc_rounded)
        ],
      ),
      body: Column(
        children: [
         TextFormField(
           controller: ctrl,
           onChanged: (qw)
           {
             setState(() {
               ctrl.text.isNotEmpty ? _show = true : _show = false;
             });

           },
         ),
          Visibility(
            visible: _show,
            child: ElevatedButton(onPressed: (){

            },
              child: Text("HAI"),
            ),
          ),
        ],
      ),
    );
  }
}

