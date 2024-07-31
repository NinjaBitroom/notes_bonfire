import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_bonfire/database/db_operations.dart';
import 'package:notes_bonfire/models/add_note_model.dart';

class AddNoteDialog extends StatelessWidget {
  AddNoteDialog({super.key});

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SimpleDialog(
        contentPadding: const EdgeInsets.all(12),
        title: const Text('Nova Anotação'),
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: 'Título da Nota',
            ),
            autofocus: true,
          ),
          TextField(
            controller: _contentController,
            minLines: 1,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Conteúdo da Nota',
            ),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {
              DbOperations.createNote(
                AddNoteModel(
                  title: _titleController.text,
                  content: _contentController.text,
                ),
              );
              context.pop();
            },
            child: const Text('Adicionar'),
          ),
        ],
      ),
    );
  }
}
