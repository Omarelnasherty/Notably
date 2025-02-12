import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/cubit/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/note_edit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NoteEdit(
            note: note,
          );
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(235, 24, 124, 128),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32, bottom: 16),
              child: Text(note.data,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
