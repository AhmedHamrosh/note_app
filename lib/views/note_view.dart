import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/components/add_note_form.dart';
import 'package:note_app/components/custom_app_bar.dart';
import 'package:note_app/components/notes_list.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/helpers/messenger_helper.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          children: [
            CustomAppbar(title: 'Notes', icon: Icons.search),
            Expanded(child: NotesList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => AddNoteCubit(),
                    child: BlocConsumer<AddNoteCubit, AddNoteState>(
                      listener: (context, state) {
                        if (state is AddNoteSuccessed) {
                          Navigator.pop(context);
                          messenger(context,
                              message: 'Note Added Successfully');
                        } if(state is AddNoteFailure){
                          messenger(context, message: 'Failed');
                        }
                      },
                      builder: (context, state) {
                        return AbsorbPointer(
                            absorbing:
                                (state is AddNoteLoading) ? true : false,
                            child: const AddNoteForm());
                      },
                    ),
                  );
                });
          },
          backgroundColor: kPrimaryColor,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.black)),
    );
  }
}
