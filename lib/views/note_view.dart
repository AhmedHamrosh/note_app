import 'package:flutter/material.dart';
import 'package:note_app/components/add_note_form.dart';
import 'package:note_app/components/custom_app_bar.dart';
import 'package:note_app/components/notes_list.dart';
import 'package:note_app/constants.dart';

class NoteView extends StatelessWidget
{
  const NoteView({super.key});
  @override

  Widget build(BuildContext context)
  {
    return   Scaffold(
      body:const Padding(
        padding:  EdgeInsets.only(left:16 , right: 16 , top:48),
        child: Column(
          children: [
            CustomAppbar(title:'Notes',icon:Icons.search),
            Expanded(child: NotesList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          showModalBottomSheet(
          
          context: context,           
          builder: (context)
          {
          
            return const AddNoteForm();
          });
        },
        backgroundColor: kPrimaryColor,shape:const CircleBorder(),
        child:const Icon(Icons.add,color:Colors.black)
        ),
    );
  }
}