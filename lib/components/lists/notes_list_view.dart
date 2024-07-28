import 'package:flutter/material.dart';
import 'package:notes_bonfire/components/misc/note_tile.dart';
import 'package:notes_bonfire/models/client_note_model.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  static const _placeholderList = [
    'Você pressionou o botão várias vezes',
    'Contador',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: _placeholderList.length,
      itemBuilder: (context, index) => NoteTile(
        note: ClientNoteModel(
          clientId: '',
          title: _placeholderList[index],
          content: '${_placeholderList[index]} ' * 2,
        ),
      ),
    );
  }
}
