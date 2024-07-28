import 'package:flutter/material.dart';

class AddNoteDialog extends StatelessWidget {
  const AddNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SimpleDialog(
        contentPadding: const EdgeInsets.all(12),
        title: const Text('Nova Anotação'),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Título da Nota',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Conteúdo da Nota',
            ),
            autofocus: true,
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {},
            child: const Text('Adicionar'),
          ),
        ],
      ),
    );
  }
}
