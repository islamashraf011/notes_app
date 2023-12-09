import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/models/note_model.dart';
part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(NotesInitial());
//method that store data in Hive
  addNote(NoteModel note) async {
    emit(
      AddNoteLoadingState(),
    );
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(
        AddNoteSuccesState(),
      );
    } catch (e) {
      emit(
        AddNoteFailureState(
          e.toString(),
        ),
      );
    }
  }
}