import 'package:flutter/material.dart';

class Mowram extends StatefulWidget {
  const Mowram({super.key});

  @override
  State<Mowram> createState() => _MowramState();
}

class _MowramState extends State<Mowram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3498DB),  // Custom blue color (hex code 0x3498DB)
        toolbarHeight: 80,  // Extend the height of the AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo_banner.png',
              fit: BoxFit.contain,
              height: 40,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/notification.png',  // Your notification icon asset
              width: 24,  // Adjust the width
              height: 24, // Adjust the height
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: ClipOval(
              child: Image.asset(
                'assets/Khmer.png', // Khmer flag image
                width: 24,  // Control the width
                height: 24, // Control the height
                fit: BoxFit.cover,  // Ensures the image fills the circle
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),


    );
  }
}
