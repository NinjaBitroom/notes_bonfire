import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_bonfire/models/add_note_model.dart';
import 'package:notes_bonfire/models/note_model.dart';

abstract final class DbOperations {
  static final db = FirebaseFirestore.instance;

  static Future<void> createNote(AddNoteModel note) async {
    await db.collection('notes').add(note.toJson());
  }

  static Future<List<NoteModel>> getNotes() async {
    final noteList = <NoteModel>[];
    final noteCollection = db.collection('notes');
    final queryResult = await noteCollection.get();
    final docList = queryResult.docs;
    for (var doc in docList) {
      var data = doc.data();
      var note = NoteModel(
        id: doc.id,
        title: data['title'].toString(),
        content: data['content'].toString(),
      );
      noteList.add(note);
    }
    return noteList;
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getNotesStream() {
    return db.collection('notes').snapshots();
  }

  static Future<void> deleteNote(String id) async {
    await db.collection('notes').doc(id).delete();
  }
}
