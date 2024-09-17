import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/components/custom_button.dart';
import 'package:note_app/components/custom_text_field.dart';

class AddNoteForm extends StatelessWidget
{
  const AddNoteForm({super.key});

  @override 
  Widget build(BuildContext context)
  {
    return const SingleChildScrollView(
      child:  Padding(
        padding:  EdgeInsets.all(20.0),
        child:  Column(
          children: [
            SizedBox(height: 16,),
            CustomTextField(hint: 'description',maxLines: 1,),
            SizedBox(height: 16,),
            CustomTextField(hint: 'Content',maxLines: 5,),
            SizedBox(height: 32,),
            CustomButton(title: 'ADD'),
          ],
        ),
      ),
    );
  }
}