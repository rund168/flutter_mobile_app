import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/Mowram.dart';
import 'package:flutter_mobile_app/home_screen.dart';


class RootApp extends StatefulWidget {
  const RootApp ({super.key});

  @override
  State<RootApp> createState() => _State();
}

class _State extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Mowram(),

    );
  }
}
