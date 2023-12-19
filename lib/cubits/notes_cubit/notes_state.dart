part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

//i remove Loading State becuase data not from Future
//i remove Success State becuase i don't need it and i'm sure the data store in it
//i remove Failuer State becuase it just normal variable and operation not in future

final class NotesSuccessState extends NotesState {}
//i write it again becuase i need to rebuild Ui again based on change will happen (delete note)