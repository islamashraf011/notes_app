import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/constants/simple_bloc_observer.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_notes_view.dart';
import 'package:notesapp/views/home_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  //to make Hive Know that it works with Note Model
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // make class cubit reach to all screens in app all time
        //but it is better to know only page that used cubit in it not here
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
