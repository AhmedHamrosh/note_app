import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget
{
  const SearchIcon({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , color: Colors.grey.withOpacity(0.1)),
      child:Center(child:IconButton(onPressed: (){}, icon:const Icon(Icons.search , size:25)),)
    );
  }
}