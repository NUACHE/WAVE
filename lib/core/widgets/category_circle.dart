import 'package:flutter/material.dart';

class CategoryCircle extends StatelessWidget {
  final String categoryName;
  final bool clicked;
  const CategoryCircle(
      {Key? key, required this.categoryName, required this.clicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: clicked == false ? Colors.grey.shade300 : Colors.blueAccent,
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: clicked == false ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
