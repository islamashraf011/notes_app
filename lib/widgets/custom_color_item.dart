import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, this.onTap});
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: isActive
            ? const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 37,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 32,
                ),
              )
            : const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 33,
              ),
      ),
    );
  }
}
