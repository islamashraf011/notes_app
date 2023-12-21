import 'package:flutter/material.dart';
import 'package:notesapp/constants/constants.dart';
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
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorItem(
            onTap: () {
              curentIndex = index;
              setState(() {});
            },
            isActive: curentIndex == index,
            color: colors[index],
          );
        },
      ),
    );
  }
}
