

import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

void messenger(BuildContext context, {required String message})
{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content:Text(message ,style: const TextStyle(color:Colors.black),),
      backgroundColor: kPrimaryColor,
      ));
}