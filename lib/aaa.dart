// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// class aaa extends StatelessWidget {
//   const aaa({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Center(
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage("assets/abc.png"),
//                     fit: BoxFit.fill
//                   )
//
//
//                 )
//               ),
//             ),
//
//
//         ),
//    body: Column(
//      children: [
//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [
//            Container(
//              height: 400,
//              width: 200,
//              child: Image.asset("assets/abc.png"),
//            ),
//            Container(
//              height: 400,
//              width: 200,
//              child: Image.asset("assets/abc.png")
//            ),
//          ],
//
//        ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 300,
//           width: 400,
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       image: AssetImage("assets/abc.png"),
//                       fit: BoxFit.fill
//                   ),
//                 ),
//
//               ),
//               TextFormField(),
//               Padding(
//                   padding: const EdgeInsets.all(6.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.mail),
//                       hintText: "login",
//                     ),
//                   )
//
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     icon: Icon(Icons.icecream_outlined),
//                     hintText: "continue",
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//
//
//      ],
//     ),
//
//     );
//
//   }
// }
import 'package:demo/abc.dart';
import 'package:flutter/material.dart';
class lsg extends StatefulWidget {
  const lsg({super.key});

  @override
  State<lsg> createState() => _lsgState();
}

class _lsgState extends State<lsg> {
final _Key = GlobalKey<FormState>();
TextEditingController name=TextEditingController();
TextEditingController mailID=TextEditingController();
TextEditingController password=TextEditingController();
bool _show=false;
void show(){
  setState(() {
    _show= name.text.isNotEmpty && name.text.isNotEmpty && name.text.isNotEmpty==true;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_book),
        centerTitle: true,
        title: Text("FLUTTER APP"),
        actions: [
          Icon(Icons.person),
        ],
      ),
      body: Form(
        key:_Key,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
          ),
          TextFormField(
            controller: name,
            onChanged: (hi){
              show();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              hintText: "name",
            ),
          ),
          SizedBox(
            height: 30,
            width: 100,
          ),
          TextFormField(
          controller: mailID,
            onChanged: (hi){
            show();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.mail),
              hintText: "mailID",
            ),
              validator: (value){
            if (value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
            {
              return "pls enter correct mailID";
            }
          }
          ),
          SizedBox(
            height: 30,
            width: 100,
          ),
          TextFormField(
            controller: password,
            onChanged: (hi){
              show();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              hintText: "password",
            ),
              validator: (value){
              if(value?.length!=8){
                return "pls enter correct password";
              }
          }
          ),
          SizedBox(
            height: 50,
          ),
          Visibility(
            visible: _show,
            child: ElevatedButton(onPressed: (){
             if(_Key.currentState!.validate()){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context)=>navigation()),
               );
             }
            },
              child: Text("logIN"),

            ),
          ),
        ],
      ),
    ),
    );
  }
}

