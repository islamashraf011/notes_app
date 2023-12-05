import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
            onpressed: () {},
          ),
          //expanded only used with (column & Row) to give widget space
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
