import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(),
          SizedBox(height: 20),
          CustomNoteItem(),
        ],
      ),
    );
  }
}
