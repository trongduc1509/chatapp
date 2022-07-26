import './user_model.dart';

class ChatUser {
  final String avatar;
  final String name;
  final String content;
  final String time;

  ChatUser(
      {required this.avatar,
      required this.name,
      required this.content,
      required this.time});

  ChatUser copy(String? avatar, String? name, String? content, String? time) =>
      ChatUser(
          avatar: avatar ?? this.avatar,
          name: name ?? this.name,
          content: content ?? this.content,
          time: time ?? this.time);
}

class ChatUserArgument {
  final UserModel chatUser;

  ChatUserArgument({required this.chatUser});
}
