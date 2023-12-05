import 'package:flutter/material.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/views/edit_notes_view.dart';
import 'package:notesapp/views/home_view.dart';

void main() {
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
