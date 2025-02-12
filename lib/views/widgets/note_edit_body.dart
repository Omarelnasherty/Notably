import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class NoteEditBody extends StatefulWidget {
  const NoteEditBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteEditBody> createState() => _NoteEditBodyState();
}

class _NoteEditBodyState extends State<NoteEditBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CostumAppBar(
              onpressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check),
          const SizedBox(
            height: 30,
          ),
          custom_text_field(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          custom_text_field(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
