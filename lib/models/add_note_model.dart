class AddNoteModel {
  final String title;
  final String content;

  const AddNoteModel({required this.title, required this.content});

  Map<String, dynamic> toJson() => {'title': title, 'content': content};
}
