import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.03),
      ),
      // becuase it is icon button i don't give hight and width to container

      child: IconButton(
        onPressed: onpressed,
        icon: Icon(
          icon,
          size: 35,
        ),
      ),
    );
  }
}
