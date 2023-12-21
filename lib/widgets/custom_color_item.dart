import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 36,
        child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 33,
        ),
      ),
    );
  }
}