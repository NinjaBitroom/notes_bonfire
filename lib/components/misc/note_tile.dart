import 'package:flutter/material.dart';
import 'package:notes_bonfire/models/client_note_model.dart';

class NoteTile extends StatelessWidget {
  final ClientNoteModel note;

  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: ListTile(
        title: Text(note.title),
        subtitle: Text(
          note.content,
          maxLines: 1,
        ),
      ),
    );
  }
}
