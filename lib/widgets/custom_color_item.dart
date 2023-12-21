import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.isActive, this.onTap, required this.color});
  final bool isActive;
  final Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: isActive
            ? CircleAvatar(
                backgroundColor: Colors.white,
                radius: 37,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 32,
                ),
              )
            : CircleAvatar(
                backgroundColor: color,
                radius: 33,
              ),
      ),
    );
  }
}
