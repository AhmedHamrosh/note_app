import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/components/note_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesList extends StatelessWidget{
  
  const NotesList({super.key});
  @override
  Widget build(BuildContext context)
  {
    return  BlocBuilder<NotesCubit,NoteState>(
      builder: (context, state) {
        List<NoteModel>? noteModels =BlocProvider.of<NotesCubit>(context).notes;
        return  ListView.builder(
        padding:const EdgeInsets.only(top: 15),
        itemCount:noteModels!.length,
        itemBuilder: (context,index)
        {
          return  NoteTile(noteModel:noteModels[index]);
        },
      );}
    );
  }
}