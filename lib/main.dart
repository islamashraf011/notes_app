import 'package:flutter/material.dart';
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
      theme: ThemeData.dark(),
      initialRoute: HomeView.id,
      routes: {HomeView.id: (context) => const HomeView()},
    );
  }
}
