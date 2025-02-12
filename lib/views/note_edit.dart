import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note_edit_body.dart';

class NoteEdit extends StatelessWidget {
  const NoteEdit({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteEditBody(
        note: note,
      ),
    );
  }
}
