import './user_model.dart';

class MessageModel {
  final int? id;
  final UserModel sender;
  final String content;
  final String time;
  final bool unread;

  MessageModel(
      {this.id,
      required this.sender,
      required this.content,
      required this.time,
      this.unread = true});
}
