import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NoteState>
{
  NotesCubit():super(InitialNote());
  List<NoteModel>? notes ; 
  void fetchAllNotes()
  {
    notes =Hive.box<NoteModel>(kNotesBox).values.toList() ;
    emit(SuccessNote());
  }
}