import 'package:chatapp/models/chat_user.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    final ChatUser chatReceiver =
        (ModalRoute.of(context)!.settings.arguments as ChatUserArgument)
            .chatUser;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Theme(
                data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      CircleAvatar(
                        backgroundImage: AssetImage(chatReceiver.avatar),
                        maxRadius: 20,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatReceiver.name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text(chatReceiver.content),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
