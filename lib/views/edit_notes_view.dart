import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';

import '../widgets/edit_notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key, required this.notes,
  });
  static String id = "EditView";
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNotesViewBody(notes: notes),
    );
  }
}
