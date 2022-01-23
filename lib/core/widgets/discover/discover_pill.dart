// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscoverPill extends StatelessWidget {
  final String categoryName;
  final bool clicked;
  final VoidCallback function;
  const DiscoverPill(
      {Key? key,
      required this.categoryName,
      required this.clicked,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        categoryName,
        style: TextStyle(
          color: clicked == false ? Colors.blueAccent : Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(10, 30),
        elevation: 1.0,
        side: BorderSide(
          width: 1.0,
          color: Colors.blueAccent,
        ),
        primary: clicked == false ? Colors.white : Colors.blueAccent,
      ),
    );
  }
}
