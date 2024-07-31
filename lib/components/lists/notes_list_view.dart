import 'package:flutter/material.dart';
import 'package:notes_bonfire/components/misc/note_tile.dart';
import 'package:notes_bonfire/models/note_model.dart';

class NotesListView extends StatefulWidget {
  final List<NoteModel> notes;
  const NotesListView({super.key, required this.notes});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    if (widget.notes.isEmpty) {
      return const Center(child: Text('Você possui nenhuma anotação ainda...'));
    }
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: widget.notes.length,
      itemBuilder: (context, index) => NoteTile(
        note: NoteModel(
          id: widget.notes[index].id,
          title: widget.notes[index].title,
          content: widget.notes[index].content,
        ),
      ),
    );
  }
}
