import 'package:flutter/material.dart';

import 'package:note_app/components/custom_tile.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_notes_view.dart';

class NoteTile extends StatelessWidget
{
  final NoteModel noteModel; 
  const NoteTile({super.key,required this.noteModel});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap:()
      {
        Navigator.push(context,MaterialPageRoute(builder: (context)
        {
          return  EditNotesView(noteModel: noteModel,);
        }));
      },
      child: Container(
        margin:const  EdgeInsets.only(bottom:10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(noteModel.color)),
        padding:const EdgeInsets.only(left:24 , top :16 , right: 12, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              CustomTile(noteModel: noteModel,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(noteModel.date,style: TextStyle(color: Colors.black.withOpacity(0.4)),),
            ),
          ],
        ),
      ),
    );
  }
}