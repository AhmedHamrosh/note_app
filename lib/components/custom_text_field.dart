import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget
{

  final int maxLines;
  final String hint;

  const CustomTextField({super.key,this.maxLines = 1 ,required this.hint});

  @override
  Widget build(BuildContext context)
  {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle:const TextStyle(color: kPrimaryColor),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide:const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color:kPrimaryColor)
          )      
      ),
    );
  }
}