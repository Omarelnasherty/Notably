import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:hive/hive.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotes);

      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
