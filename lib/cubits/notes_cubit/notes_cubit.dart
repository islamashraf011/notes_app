import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes() {
    try {
      List<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox).values.toList();
      emit(
        NotesSuccessState(notes: notesBox),
      );
    } catch (e) {
      emit(
        NotesFailureState(e.toString()),
      );
    }
  }
}
