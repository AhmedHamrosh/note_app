import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/components/custom_app_bar.dart';
import 'package:note_app/components/custom_text_field.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';


class EditNotesView extends StatefulWidget
{
  
  EditNotesView({super.key,required this.noteModel});
  NoteModel noteModel ;
  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? _title;
  String? _subTitle;
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:16 ,right: 16,top:48),
        child:Column(
          children: [
            CustomAppbar(
              title: 'Edit Notes'
            , icon: Icons.check,
            onPressed: ()
            {
              widget.noteModel.title= _title ?? widget.noteModel.title;
              widget.noteModel.subTitle= _subTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          
            ),
            const SizedBox(height: 48,),
            CustomTextField(
              intialValue: widget.noteModel.title ,
              maxLines: 1,
              onChanged: (data)
              {
                _title = data;
              },
            ),
            const SizedBox(height: 20,),
            CustomTextField(
              intialValue: widget.noteModel.subTitle ,
              maxLines: 5,
              onChanged: (data)
              {
                _subTitle =data;
              },
              ),
          
          ],
        )
        )
    );
  }
}