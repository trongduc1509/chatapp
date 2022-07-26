class MessageModel {
  final int? id;
  final int senderId;
  final String content;
  final String time;
  final bool unread;

  MessageModel(
      {this.id,
      required this.senderId,
      required this.content,
      required this.time,
      this.unread = true});
}
