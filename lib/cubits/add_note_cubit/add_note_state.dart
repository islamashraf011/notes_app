part of 'add_note_cubit.dart';

@immutable
abstract class AddNotesState {}

final class NotesInitial extends AddNotesState {}

final class AddNoteLoadingState extends AddNotesState {}

final class AddNoteSuccesState extends AddNotesState {}

final class AddNoteFailureState extends AddNotesState {
  final String errMessage;

  AddNoteFailureState(this.errMessage);
}
