import 'package:flutter/cupertino.dart';
import 'package:note_app/components/color_sample_widget.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteColorListView extends StatefulWidget
{
  NoteModel noteModel;
  EditNoteColorListView({super.key, required this.noteModel});
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = kColorPalete.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
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
               widget.noteModel.color = kColorPalete[index].value;
               currentIndex =index;
               setState((){});
                  
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