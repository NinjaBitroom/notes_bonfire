import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_bonfire/components/buttons/add_note_button.dart';
import 'package:notes_bonfire/components/lists/custom_progress_indicator.dart';
import 'package:notes_bonfire/components/lists/notes_list_view.dart';
import 'package:notes_bonfire/components/misc/base_page.dart';
import 'package:notes_bonfire/database/db_operations.dart';
import 'package:notes_bonfire/models/note_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot<Map<String, dynamic>>> _notesStream =
      DbOperations.getNotesStream();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: _notesStream,
      builder: (
        BuildContext context,
        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
      ) {
        final Widget child;
        if (snapshot.hasData) {
          child = NotesListView(
            notes: snapshot.data!.docs.map(
              (e) {
                final data = e.data();
                return NoteModel(
                  id: e.id,
                  title: data['title'],
                  content: data['content'],
                );
              },
            ).toList(),
          );
        } else {
          child = const CustomProgressIndicator();
        }
        return BasePage(
          title: 'Suas Anotações',
          floatingActionButton: const AddNoteButton(),
          child: child,
        );
      },
    );
  }
}
