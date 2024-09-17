import 'package:flutter/material.dart';
import 'package:note_app/components/custom_app_bar.dart';
import 'package:note_app/components/custom_button.dart';
import 'package:note_app/components/custom_text_field.dart';

class EditNotesView extends StatelessWidget
{
  const EditNotesView({super.key});
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left:16 ,right: 16,top:48),
        child:Column(
          children: [
            CustomAppbar(title: 'Edit Notes', icon: Icons.check),
            SizedBox(height: 48,),
            CustomTextField(hint: 'title' , maxLines: 1,),
            SizedBox(height: 20,),
            CustomTextField(hint: 'Content' , maxLines: 5,),
          
          ],
        )
        )
    );
  }
}