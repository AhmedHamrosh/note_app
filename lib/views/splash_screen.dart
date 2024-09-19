import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:note_app/components/splash_icon.dart';
import 'package:note_app/views/note_view.dart';
class SplashScreen extends StatelessWidget
{
  @override 
  Widget build(BuildContext context)
  {
    return AnimatedSplashScreen(
      splash: SplashIcon(),
      nextScreen: const NoteView(),
      backgroundColor: Colors.black,
      splashIconSize: 400,
      
       );
  }
}