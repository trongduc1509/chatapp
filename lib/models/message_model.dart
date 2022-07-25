import './user_model.dart';

class MessageModel {
  final UserModel sender;
  final String content;
  final String time;
  final bool unread;

  MessageModel(
      {required this.sender,
      required this.content,
      required this.time,
      this.unread = true});
}
