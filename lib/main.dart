
import 'package:demo/111.dart';
import 'package:demo/123.dart';
import 'package:demo/BMI.dart';
import 'package:demo/GST%20calc.dart';
import 'package:demo/HAI.dart';
import 'package:demo/ott login.dart';
import 'package:demo/RCB.dart';
import 'package:demo/aaa.dart';
import 'package:demo/abc.dart';
import 'package:demo/amazon.dart';
import 'package:demo/calculator.dart';
import 'package:demo/csk.dart';
import 'package:demo/example.dart';
import 'package:demo/hello.dart';
import 'package:demo/hjj.dart';
import 'package:demo/listdata.dart';
import 'package:demo/listview.dart';
import 'package:demo/maths.dart';
// import 'package:demo/instagram.dart';
import 'package:demo/new1.dart';
import 'package:demo/newlist.dart';
import 'package:demo/spotify.dart';
import 'package:demo/valid.dart';
import 'package:demo/zee.dart';

import 'package:flutter/material.dart';

import 'addlist.dart';
import 'ott home.dart';
import 'ott splash screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData
        (
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: addlist(),
    );
  }
}


