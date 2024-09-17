import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomTile extends StatelessWidget
{
  const CustomTile({super.key});

  @override 
  Widget build(BuildContext context)
  {
    return  ListTile(
      contentPadding: const EdgeInsets.all(0),
      title:const Padding(
        padding:  EdgeInsets.only(bottom:16.0),
        child:   Text('Flutter tips', style:TextStyle(color:Colors.black,fontSize: 26)),
      ),
      trailing:  IconButton(onPressed: (){},padding:const EdgeInsets.only(bottom: 30),icon: const Icon(FontAwesomeIcons.trash ,color:Colors.black,size: 22,)),
      subtitle:  Padding(
        padding: const EdgeInsets.only(bottom: 16,right:16),
        child: Text('Build your career with Ahmed Hamrosh' , style:TextStyle(color:Colors.black.withOpacity(0.4),fontSize: 18)),
      ),
      
    );
  }
}