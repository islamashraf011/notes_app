import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.cyan.shade200,
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 30,
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          //only changes apply on the shape that make here not inside (builder)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
    );
  }
}
