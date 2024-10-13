import 'package:flutter/material.dart';

class HeaderCardWidgets extends StatefulWidget {
  String title;
  Icon icon;
  final VoidCallback? onPressed;
  HeaderCardWidgets({super.key, required this.title, required this.icon, required this.onPressed});

  @override
  State<HeaderCardWidgets> createState() => _HeaderCardWidgetsState();
}

class _HeaderCardWidgetsState extends State<HeaderCardWidgets> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Column(
        children: [
          widget.icon,
          Container(
            child: Text(
              "${widget.title}",
              style: TextStyle
                (fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
