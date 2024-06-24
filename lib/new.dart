import 'package:flutter/material.dart';

  class qwerty extends StatelessWidget {
  const qwerty({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Image.asset("assets/abc.png"),
        title: Text("hello"),
        
        actions: [
          Icon(Icons.menu),
          Icon(Icons.menu),
        ],
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){}, child: Text("ok")),

          Container(
            height: 100,
            width: 200,
            child: Image.asset("assets/abc.png"),
          )
        ],
      ),
    );
  }
  }

