import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.notes});
  final NoteModel notes;
  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subTitle;

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
            onpressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = subTitle ?? widget.notes.subTitle;
              widget.notes.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.notes.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.notes.subTitle,
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
