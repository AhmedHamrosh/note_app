import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/components/custom_app_bar.dart';

class NoteView extends StatelessWidget
{
  const NoteView({super.key});
  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:16 , right: 16 , top:48),
        child: Column(
          children: [
            CustomAppbar(),
          ],
        ),
      ),
    );
  }
}