import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:notes_bonfire/models/client_note_model.dart';

final class NoteProvider extends ChangeNotifier {
  final List<ClientNoteModel> _notes = [];

  UnmodifiableListView<ClientNoteModel> get notes =>
      UnmodifiableListView(_notes);
}
