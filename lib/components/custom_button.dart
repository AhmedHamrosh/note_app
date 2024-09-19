import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget
{
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  const CustomButton({super.key,required this.title, required this.isLoading,this.onTap });  
  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color:kPrimaryColor
        ),
        child:Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: (isLoading)? const CircularProgressIndicator(color:Colors.black):Text(title,
                       style:const TextStyle(color:Colors.black,fontSize:25,fontWeight: FontWeight.w900)
                       ),
          ),
        )
      ),
    );
  }
}