import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/components/color_sample_widget.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteColorListView extends StatefulWidget
{
  @override
  State<AddNoteColorListView> createState() => _AddNoteColorListViewState();
}

class _AddNoteColorListViewState extends State<AddNoteColorListView> {
  int currentIndex = 0;
  @override 
  Widget build (BuildContext context)
  {
    return  SizedBox(
      height: 38*2,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorPalete.length,
        itemBuilder:(context , index) {
           return GestureDetector(
            onTap:() {
               currentIndex =index;
               setState((){});
               BlocProvider.of<AddNoteCubit>(context).color = kColorPalete[index];    
            },
             child: ColorSampleWidget(
                color:kColorPalete[index],
                isSelected: currentIndex == index 
              ),
           );
   }
      )
    );
  }
}