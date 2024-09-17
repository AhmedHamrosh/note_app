import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/components/note_tile.dart';

class NotesList extends StatelessWidget{
  const NotesList({super.key});
  @override
  Widget build(BuildContext context)
  {
    return  ListView.builder(
      padding:const EdgeInsets.only(top: 15),
      itemBuilder: (context,index)
      {
        return const NoteTile();
      },
    );
  }
}