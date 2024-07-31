import 'package:flutter/material.dart';
import 'package:notes_bonfire/database/db_operations.dart';
import 'package:notes_bonfire/models/note_model.dart';

class NoteTile extends StatelessWidget {
  final NoteModel note;

  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: ListTile(
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            DbOperations.deleteNote(note.id);
          },
        ),
        title: Text(note.title),
        subtitle: Text(note.content),
      ),
    );
  }
}
