import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/components/custom_icon.dart';

class CustomAppbar extends StatelessWidget
{
  final String title;
  final IconData icon ;
  const CustomAppbar({super.key,required this.title,required this.icon});
  @override
  Widget build(BuildContext context)
  {
    return  Row(
      children: [
        Text(title ,style: const TextStyle(fontSize: 24),),
        const Spacer(),
        CustomIcon(icon:icon),
        
      ],

    );
  }
}