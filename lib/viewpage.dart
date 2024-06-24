import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  final String initialValueA;
  final String initialValueB;
  final String initialValueC;

  const ViewPage({
    Key? key,
    required this.initialValueA,
    required this.initialValueB,
    required this.initialValueC,
  }) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  late TextEditingController aController;
  late TextEditingController bController;
  late TextEditingController cController;

  @override
  void initState() {
    super.initState();
    aController = TextEditingController(text: widget.initialValueA);
    bController = TextEditingController(text: widget.initialValueB);
    cController = TextEditingController(text: widget.initialValueC);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: aController,

          ),
          TextFormField(
            controller: bController,

          ),
          TextFormField(
            controller: cController,
          ),
          ElevatedButton(
            onPressed: () {
              // Pass back the modified values to the Test page
              Navigator.pop(
                context,
                [aController.text, bController.text, cController.text],
              );
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    aController.dispose();
    bController.dispose();
    cController.dispose();
    super.dispose();
  }
}