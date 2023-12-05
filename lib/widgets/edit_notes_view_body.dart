import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            backIcon: Icons.arrow_back,
            backPressed: () {
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
            onpressed: () {},
          ),
        ],
      ),
    );
  }
}
