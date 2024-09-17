import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget
{
  final IconData icon ;
  const CustomIcon({super.key,required this.icon});
  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , color: Colors.grey.withOpacity(0.08)),
      child:Center(child:IconButton(onPressed: (){}, icon: Icon(icon , size:25)),)
    );
  }
}