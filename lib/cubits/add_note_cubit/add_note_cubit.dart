import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit():super(AddNoteIntialState());

  Color color = kColorPalete[0];
  void addNote(NoteModel note) async
  {
    note.color= color.value;
    emit(AddNoteLoading());
    try
    {
      await Hive.box<NoteModel>(kNotesBox).add(note);
      emit(AddNoteSuccessed());
    }catch(e)
    {
      emit(AddNoteFailure(errMsg: 'Sorry an error occured'));
    }
  }
}