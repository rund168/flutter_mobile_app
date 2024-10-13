import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  String title;

   CallScreen({super.key, required this.title});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text("${widget.title}"),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Text("Go Back", style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
