


import 'package:demo/csk.dart';
import 'package:flutter/material.dart';

import 'aaa.dart';
class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}
class _validState extends State<valid> {
  final _Key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("FLUTTER"),
        actions: [
          Icon(Icons.ac_unit_rounded),
        ],
      ),
      body:Form(
        key: _Key,
        child: Column(
          children: [
            SizedBox(height: 50,
            width: 100,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.drive_file_rename_outline),
                hintText: "NAME",
              ),
              validator: (value){
                if(value!.isEmpty||value==null){
                  return "please enter correct name";
                }
              }
            ),
            SizedBox(
              height: 10,
              width: 100,
            ),
            TextFormField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.mail),
                hintText: "enter MAIL",
              ) ,
              validator:(value){
                if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value))
                {
                  return "please enter correct mail ID";
                }
              }
              ),
            SizedBox(
              height: 10,
              width: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.phone),
                hintText: "phone NO",
              ),
              validator: (value){
                if (value?.length!=10){
                  return "please enter correct phone NO";
                }
              }
            ),
            SizedBox(
              height: 10,
              width: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.password_rounded),
                hintText: "Password",
              ),
              validator: (value){
                if(value?.length!=8){
                  return "please enter correct password";
                }
              }
            ),
            ElevatedButton(onPressed: (){
              if(_Key.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content:Text("VALIDATE SUCCESSFULLY"))
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  csk()),
                );
              }
              else{ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("PLEASE ENTER CORRECT NAME")));

              }},child: Text("LOGIN"),
            ),],
        ),
      ) ,
    );
  }
}
