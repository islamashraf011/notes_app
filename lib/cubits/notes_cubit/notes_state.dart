part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {
  //it depends what i need (store list here or in cubit)
  //if i show all data in one screen here if i show data in many screens store it in cubit

  final List<NoteModel> notes;

  NotesSuccessState({required this.notes});
}

final class NotesFailureState extends NotesState {
  final String messageError;

  NotesFailureState(this.messageError);
}
