import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/constants/simple_bloc_observer.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_notes_view.dart';
import 'package:notesapp/views/home_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  //register first then open box
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  //to make Hive Know that it works with Note Model
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // make font here to apply it in all pages
        fontFamily: kFontFamily,
      ),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => const HomeView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
    );
  }
}
