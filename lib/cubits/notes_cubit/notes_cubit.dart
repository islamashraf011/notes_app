import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesBox;
  getAllNotes() {
    notesBox = Hive.box<NoteModel>(kNotesBox).values.toList();
    emit(NotesSuccessState());
  }
}
