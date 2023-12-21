import 'package:flutter/material.dart';
import 'custom_color_item.dart';

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 69,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorItem(
            isActive: curentIndex == index,
            onTap: () {
              curentIndex = index;
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
