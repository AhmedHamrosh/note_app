class AddNoteState{}

class AddNoteIntialState extends AddNoteState{}

class AddNoteLoading extends AddNoteState{}

class AddNoteSuccessed extends AddNoteState{}

class AddNoteFailure extends AddNoteState
{
  final String errMsg ;
  AddNoteFailure({required this.errMsg});
}