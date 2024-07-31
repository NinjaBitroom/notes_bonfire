import 'package:flutter/material.dart';
import 'package:notes_bonfire/components/dialogs/add_note_dialog.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        context: context,
        builder: (_) => AddNoteDialog(),
      ),
      tooltip: 'Adicionar Nota',
      child: const Icon(Icons.add),
    );
  }
}
