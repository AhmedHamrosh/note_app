import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';


class CustomTile extends StatelessWidget
{
  final NoteModel noteModel ;
  const CustomTile({super.key,required this.noteModel});

  @override 
  Widget build(BuildContext context)
  {
    return  ListTile(

      contentPadding: const EdgeInsets.all(0),
      title: Padding(
        padding:const EdgeInsets.only(bottom:16.0),
        child:   Text(noteModel.title, style:const TextStyle(color:Colors.black,fontSize: 26)),
      ),
      trailing:  IconButton(
            onPressed: (){
              noteModel.delete();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            padding:const EdgeInsets.only(bottom: 30),
            icon: const Icon(FontAwesomeIcons.trash ,
            color:Colors.black,size: 22,)),
      subtitle:  Padding(
        padding: const EdgeInsets.only(bottom: 16,right:16),
        child: Text(noteModel.subTitle , style:TextStyle(color:Colors.black.withOpacity(0.4),fontSize: 18,)),
      ),
      
    );
  }
}