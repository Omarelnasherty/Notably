import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/costum_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class NoteEditBody extends StatelessWidget {
  const NoteEditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CostumAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 30,
          ),
          custom_text_field(
            hintText: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          custom_text_field(
            hintText: 'Content',
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
