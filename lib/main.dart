import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/conistans/consts.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bolc_observer.dart';
import 'package:notes_app/views/notes_home.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBolcObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NotesHome(),
    );
  }
}
