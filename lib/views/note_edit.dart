import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_edit_body.dart';

class NoteEdit extends StatelessWidget {
  const NoteEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteEditBody(),
    );
  }
}
