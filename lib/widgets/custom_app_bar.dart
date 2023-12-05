import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onpressed,
    this.backIcon,
    this.backPressed,
  });

  final String title;
  final VoidCallback onpressed;
  final IconData icon;
  final VoidCallback? backPressed;
  final IconData? backIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: backPressed,
          icon: Icon(
            backIcon,
            size: 25,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 35),
        ),
        CustomSearchIcon(
          icon: icon,
          onpressed: onpressed,
        )
      ],
    );
  }
}
