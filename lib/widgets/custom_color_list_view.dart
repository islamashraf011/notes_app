import 'package:flutter/material.dart';

import 'custom_color_item.dart';

class ColorItemListView extends StatelessWidget {
  const ColorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 69,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}