import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class qwerty extends StatelessWidget {
  const qwerty({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/abc.png"),
      title: Text("hello"),
      actions: [
        Icon(Icons.menu),
        Icon(Icons.menu),
      ],),
      body: ListView(
        children: [
          Container(
            height: 500,
            width: 100,
            child: Image.asset("assets/abc.png",fit: BoxFit.fill,),
          ),
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){},child: Text("ok")),
          Container(
            height: 500,
            width: 100,
            child: Image.asset("assets/abc.png",fit: BoxFit.fill,),
          ),
          Container(
            height: 500,
            width: 100,
            child: Image.asset("assets/abc.png",fit: BoxFit.fill,),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:frontpage/listcontinue.dart';
//
// import 'listnew.dart';
//
// class newlist extends StatefulWidget {
//   const newlist({super.key});
//
//   @override
//   State<newlist> createState() => _newlistState();
// }
//
// class _newlistState extends State<newlist> {
//   final TextEditingController name = TextEditingController();
//   final TextEditingController email = TextEditingController();
//   final TextEditingController password = TextEditingController();
//
//   final List listt = [];
//
//   void changePage(String data) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => list3(
//           name: data,
//         ),
//       ),
//     ).then((editableData) {
//       if (editableData != null) {
//         setState(() {
//           listt[listt.indexWhere((element) => element == data)] = editableData;
//         });
//       }
//     });
//   }
//
//   void deleteitem(var i) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => list3(name: i),
//       ),
//     ).then((deleteableData) {
//       if (deleteableData == null) {
//         setState(() {
//           listt.removeWhere((index) => index == i);
//           listt.removeWhere((element) {
//             return element.key == listt[i].key;
//           });
//           listt.removeAt(i);
//         });
//       }
//     });
//   }
//
//   void addd() {
//     String con1 = name.text;
//     String con2 = email.text;
//     String con3 = password.text;
//     setState(() {
//       listt.add('$con1\n$con2\n$con3');
//       name.clear();
//       email.clear();
//       password.clear();
//     });
//   }
//
//   void qwe(String name) {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => list2(
//               name: name,
//             )));
//   }
//
//   //List<list2> all = List.generate(n.length, (index) => [n.[index],e.[index],p.[index]]);
//   // List<List<int>> combinedList = List.generate(.length, (index) {
//   //   return [list1[index], list2[index], list3[index]];
//   // });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 100,
//           ),
//           Center(
//             child: Container(
//               width: 300,
//               child: TextFormField(
//                 controller: name,
//                 decoration: InputDecoration(
//                   hintText: 'name',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Center(
//             child: Container(
//               width: 300,
//               child: TextFormField(
//                 controller: email,
//                 decoration: InputDecoration(
//                   hintText: 'email',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Center(
//             child: Container(
//               width: 300,
//               child: TextFormField(
//                 controller: password,
//                 decoration: InputDecoration(
//                   hintText: 'password',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   addd();
//                 });
//               },
//               child: Text("ADD")),
//           SizedBox(
//             height: 30,
//           ),
//           Container(
//             height: 280,
//             width: 300,
//             decoration: BoxDecoration(border: Border.all()),
//             child: ListView.builder(
//               itemCount: listt.length,
//               itemBuilder: (context, index) => GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => list3(
//                             name: listt[index],
//                           )));
//                 },
//                 child: Card(
//                   elevation: 20,
//                   child: Column(
//                     children: [
//                       Text(listt[index]),
//                       Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   listt.removeAt(index);
//                                 });
//                               },
//                               icon: Icon(Icons.delete)),
//                           IconButton(
//                               onPressed: () {
//                                 changePage(listt[index]);
//                               },
//                               icon: Icon(Icons.edit)),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }