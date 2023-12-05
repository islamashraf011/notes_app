import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: "Title",
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "Content",
              maxlines: 5,
            ),
            const SizedBox(
              height: 60,
            ),
            const CustomBotton(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
