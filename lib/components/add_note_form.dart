

import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/components/custom_button.dart';
import 'package:note_app/components/custom_text_field.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteForm extends StatefulWidget
{
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? _title , _subTitle;

  @override 
  Widget build(BuildContext context)
  {
    return Form(
      autovalidateMode: autovalidateMode,
      key:formKey,
      child: SingleChildScrollView(
        child:  Padding(
          padding:   EdgeInsets.only(
            left:20,
            right:20,
            top:20,
            bottom: (MediaQuery.of(context)!.viewInsets.bottom == 0)? 20 :  MediaQuery.of(context)!.viewInsets.bottom,
          ),
          child:  Column(
            children: [
             const SizedBox(height: 16,),
              CustomTextField(
                hint: 'description',
                maxLines: 1,
                onSaved: (data)
                {
                  _title = data;
                },
                ),
              const SizedBox(height: 16,),
              CustomTextField(
                hint: 'Content',
                maxLines: 5,
                onSaved: (data)
                {
                  _subTitle=data;
                },
                ),
            const  SizedBox(height: 32,),

              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                return  CustomButton(
                  isLoading:(state is AddNoteLoading )? true: false,
                  title: 'ADD',
                  onTap:()
                  {
                    if(formKey.currentState!.validate())
                    {
                     formKey.currentState!.save(); 
                     DateTime curTime = DateTime.now();
                     var formattedTime= formatDate(curTime, [dd,'-',mm,'-',yyyy]);
                     BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteModel(
                        title: _title!,
                        subTitle: _subTitle!,
                        date: formattedTime.toString(),
                        color:kPrimaryColor.value )
                     );
                     BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    }
                    else
                    {
                      autovalidateMode=AutovalidateMode.always;
                      setState(() {
                            
                      });
                    }
                  }
                  
                );
  }),
            ],
          ),
        ),
      ),
    );
  }
}