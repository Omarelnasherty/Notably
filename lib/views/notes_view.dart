import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes/notes_cubit.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';
import 'package:notes_app/views/widgets/note_list.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CostumAppBar(title: 'Notes', icon: Icons.search),
          Expanded(
            child: NotesList(),
          ),
        ],
      ),
    );
  }
}
