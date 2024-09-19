import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorSampleWidget extends StatelessWidget
{
  final bool isSelected;
  final Color color;
  const ColorSampleWidget({super.key ,required this.isSelected,required this.color});
  @override
  Widget build(BuildContext context)
  {
    if(isSelected == true){

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Colors.white,
        child:CircleAvatar(
          radius: 34,
          backgroundColor: color,
        )
      ),
    );
    }
  else
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: CircleAvatar(
         radius: 38,
         backgroundColor: color,
      ),
    );
  }
  }
}