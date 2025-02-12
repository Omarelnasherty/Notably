import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes/notes_cubit.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/widgets/add_note_bottomSheet.dart';

class NotesHome extends StatelessWidget {
  const NotesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomsheet();
              },
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          )),
      body: const NotesView(),
    );
  }
}
