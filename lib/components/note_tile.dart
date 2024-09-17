import 'package:flutter/material.dart';

import 'package:note_app/components/custom_tile.dart';
import 'package:note_app/views/edit_notes_view.dart';

class NoteTile extends StatelessWidget
{
  const NoteTile({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap:()
      {
        Navigator.push(context,MaterialPageRoute(builder: (context)
        {
          return const EditNotesView();
        }));
      },
      child: Container(
        margin:const  EdgeInsets.only(bottom:10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:const Color(0xffffcc80)),
        padding:const EdgeInsets.only(left:24 , top :16 , right: 12, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomTile(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text('May 21,2024',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
            ),
          ],
        ),
      ),
    );
  }
}