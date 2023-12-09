part of 'add_note_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNoteLoadingState extends NotesState {}

final class AddNoteSuccesState extends NotesState {}

final class AddNoteFailureState extends NotesState {
  final String errMessage;

  AddNoteFailureState(this.errMessage);
}
