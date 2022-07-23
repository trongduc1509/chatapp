import 'package:chatapp/models/chat_user.dart';
import 'package:flutter/material.dart';

class ChatUserItem extends StatelessWidget {
  const ChatUserItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.content,
      required this.time,
      required this.isRead})
      : super(key: key);
  final String image;
  final String name;
  final String content;
  final String time;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/conversation',
            arguments: ChatUserArgument(
                chatUser: ChatUser(
                    avatar: image, name: name, content: content, time: time)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              maxRadius: 30,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              time,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
