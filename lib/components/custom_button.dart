import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget
{
  final String title;
  const CustomButton({super.key,required this.title});
  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color:kPrimaryColor
      ),
      child:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(title,
                     style:const TextStyle(color:Colors.black,fontSize:25,fontWeight: FontWeight.w900)
                     ),
        ),
      )
    );
  }
}