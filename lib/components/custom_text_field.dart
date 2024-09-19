import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget
{

  final int maxLines;
  final String? hint;
  final String? intialValue;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  const CustomTextField({super.key,this.maxLines = 1 , this.hint,this.onSaved,this.onChanged,this.intialValue});

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      onSaved: onSaved,
      onChanged:onChanged,
      validator: (value) {
        if(value?.isEmpty ??true)
        {
          return 'Required';
        }
        else{
          return null;
        }
      },
      textAlignVertical: TextAlignVertical.center,
      initialValue: intialValue,
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