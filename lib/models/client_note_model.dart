class ClientNoteModel {
  final String clientId;
  final String? serverId;
  final String title;
  final String content;

  const ClientNoteModel({
    required this.clientId,
    this.serverId,
    required this.title,
    required this.content,
  });
}
