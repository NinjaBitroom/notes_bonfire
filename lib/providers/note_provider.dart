import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:notes_bonfire/models/note_model.dart';

final class NoteProvider extends ChangeNotifier {
  final List<NoteModel> _notes = [];

  UnmodifiableListView<NoteModel> get notes => UnmodifiableListView(_notes);
}
