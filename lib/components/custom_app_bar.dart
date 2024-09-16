import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/components/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        Text('Notes' ,style: TextStyle(fontSize: 24),),
        Spacer(),
        SearchIcon(),
        
      ],

    );
  }
}