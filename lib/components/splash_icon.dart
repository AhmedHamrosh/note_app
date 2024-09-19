import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class SplashIcon extends StatelessWidget
{
  @override
  build(BuildContext context)
  {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const CircleAvatar(
        radius: 140,
        backgroundColor: kPrimaryColor,
        child:CircleAvatar(
          radius:120,
          backgroundColor: Colors.black,
          child:Icon(Icons.book ,color:kPrimaryColor ,size:140),
        )
      ),
      SizedBox(height: 20,),
      Text('Nemo Notes✒️',style: TextStyle(color:kPrimaryColor , fontFamily:'PlaypenSans',fontSize:50 , fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
      ],
    );
  }
}