import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

import '../widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotesCubit>(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        floatingActionButton: CustomFloatingActionButton(),
        body: NotesViewBody(),
      ),
    );
  }
}
