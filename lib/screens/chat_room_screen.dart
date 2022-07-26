import 'package:chatapp/components/message_item.dart';
import 'package:chatapp/constants/app_theme.dart';
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

    final List<MessageModel> messageList = [
      MessageModel(
          sender: AppTheme.tempList[1],
          content: "Hello dhsudhushduhsduhsihd=djasdasdjiasjdiasjdjasidjasijda",
          time: "03:00"),
      MessageModel(
          sender: AppTheme.tempList[0], content: "Hello", time: "01:00"),
      // MessageModel(
      //     sender: AppTheme.tempList[2], content: "Hello", time: "05:00"),
      // MessageModel(
      //     sender: AppTheme.tempList[3], content: "Hello", time: "07:00"),
      // MessageModel(
      //     sender: AppTheme.tempList[4], content: "Hello", time: "09:00"),
      // MessageModel(
      //     sender: AppTheme.tempList[5], content: "Hello", time: "11:00"),
      // MessageModel(
      //     sender: AppTheme.tempList[6], content: "Hello", time: "13:00"),
      // MessageModel(sender: AppTheme.tempList[7], content: "Hi", time: "15:00"),
    ];

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: messageList.length,
                itemBuilder: (context, index) => MessageItem(
                    message: messageList[index],
                    avaUrl: messageList[index].sender.avaUrl,
                    time: messageList[index].time,
                    isMine: (index % 2 == 0) ? true : false),
              )),
              const ChatInputSpace(),
            ],
          ),
        ),
      ),
    );
  }
}
