import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/conistans/consts.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? notes;
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotes);

    notes = notesBox.values.toList();
  }
}
