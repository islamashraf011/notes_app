import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.cyan.shade200,
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
