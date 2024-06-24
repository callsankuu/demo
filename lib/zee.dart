import 'package:flutter/material.dart';

import 'csk.dart';

class qwertyu extends StatefulWidget {
  const qwertyu({super.key});

  @override
  State<qwertyu> createState() => _qwertyuState();
}

class _qwertyuState extends State<qwertyu> {
  final _Key = GlobalKey<FormState>();
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool _show = false;
  void show() {
    setState(() {
      _show = name.text.isNotEmpty && email.text.isNotEmpty && password.text.isNotEmpty== true;
    });
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc_rounded),
          title: Text("FLUTTER"),
          actions: [
            Icon(Icons.menu),
          ],
        ),
        body: Form(
            key: _Key,
            child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 100,
                  ),
                  TextFormField(
                    controller: name,
                    onChanged: (csk){
                      show();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.near_me_outlined),
                      hintText: "NAME",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  TextFormField(
                    controller: email,
                    onChanged: (csk){
                      show();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.mail),
                      hintText: "mail ID",
                    ),
                      validator:(value){
                        if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value))
                        {
                          return "please enter correct mail ID";
                        }
                      }
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  TextFormField(
                    controller: password,
                    onChanged: (csk){
                      show();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.near_me_outlined),
                      hintText: "password",
                    ),
                      validator: (value){
                     if(value?.length!=8){
                       return "please enter correct password";
                     }
                    }
                  ),SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  SizedBox(height: 30),
                  Visibility(
                      visible: _show,
                      child: ElevatedButton(onPressed: (){
                        if (_Key.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  csk()),
                          );
                        }
                      },
                          child: Text("Login"))),

                ] )
        )
    );
  }
}
