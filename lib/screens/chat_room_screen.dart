import 'package:chatapp/models/model.dart';
import 'package:flutter/material.dart';
import '../components/component.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    final UserModel chatReceiver =
        (ModalRoute.of(context)!.settings.arguments as ChatUserArgument)
            .chatUser;

    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Colors.grey.shade100.withOpacity(0.8),
          leading: IconButton(
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios_new)),
          title: Theme(
            data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(chatReceiver.avaUrl),
                  maxRadius: 23,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatReceiver.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        chatReceiver.nickName!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Spacer(),
            ChatInputSpace(),
          ],
        ),
      ),
    );
  }
}
