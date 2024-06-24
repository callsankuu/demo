import 'package:flutter/material.dart';

class asd extends StatelessWidget {
  const asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
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
              width: 100,
              child: Image.asset("assets/abc.png"),
          )
        ],
      ),
    );
  }
}
class rr extends StatefulWidget {
  const rr({super.key});

  @override
  State<rr> createState() => _rrState();
}

class _rrState extends State<rr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_book),
        centerTitle: true,
        title: Text("SETTINGS"),
        actions: [Icon(Icons.person_2_rounded),
        ],
      ),
      body: ListView(
        children: [SizedBox(
          height: 100, width: 100,),
          Card(
            child: ListTile(
              leading: Icon(Icons.arrow_back_ios_new),
              title: Text("REPORTS"),
            ),
          ),
          SizedBox(height: 50,),
          Card(
            child: ListTile(
              leading: Icon(Icons.arrow_back_ios_new),
              title: Text("Report 1"),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            child: ListTile(
               leading:Icon(Icons.arrow_back_ios_new),
              title: Text("Report 2"),
            ),
          ),SizedBox(height: 20,),
          Card(
            child: ListTile(
              leading: Icon(Icons.arrow_back_ios_new),
              title: Text("Report 3"),
            ),
          ),
          SizedBox(height: 100),
          Card(
            child: ListTile(
              title: Text("HELP"),
            ),
          ),
          SizedBox(height: 100,),

          Container(
            height: 75,
              width: 50,
              child: ElevatedButton(onPressed: (){}, child: Text("LOGIN"),)),
        ],
      ),
    );
  }
}
