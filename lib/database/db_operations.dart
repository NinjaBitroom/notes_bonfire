import 'package:cloud_firestore/cloud_firestore.dart';

abstract final class DbOperations {
  static final db = FirebaseFirestore.instance;
}
