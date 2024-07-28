import 'package:flutter/material.dart';
import 'package:notes_bonfire/components/buttons/add_note_button.dart';
import 'package:notes_bonfire/components/lists/notes_list_view.dart';
import 'package:notes_bonfire/components/misc/base_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const BasePage(
      title: 'Suas Anotações',
      floatingActionButton: AddNoteButton(),
      child: NotesListView(),
    );
  }
}
