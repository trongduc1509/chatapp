import 'package:chatapp/constants/constant_item.dart';
import 'package:flutter/material.dart';
import '../components/component.dart';
import '../models/model.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List<ChatUser> tempList = [
    ChatUser(
        avatar: 'assets/images/userImage1.jpeg',
        name: 'Nick Jonas',
        content: 'Wazzup bro',
        time: '01:00'),
    ChatUser(
        avatar: 'assets/images/userImage2.jpeg',
        name: 'Zayn Malik',
        content: "What's good man",
        time: '03:00'),
    ChatUser(
        avatar: 'assets/images/userImage3.jpeg',
        name: 'Miley',
        content: 'Hi',
        time: '05:00'),
    ChatUser(
        avatar: 'assets/images/userImage4.jpeg',
        name: 'Jordan',
        content: 'Sheeshhh',
        time: '07:00'),
    ChatUser(
        avatar: 'assets/images/userImage5.jpeg',
        name: 'Kyrie Irving',
        content: 'Wanna play games?',
        time: '09:00'),
    ChatUser(
        avatar: 'assets/images/userImage6.jpeg',
        name: 'Lebron James',
        content: 'Wazzup bro',
        time: '11:00'),
    ChatUser(
        avatar: 'assets/images/userImage7.jpeg',
        name: 'Justin',
        content: 'Check my new song',
        time: '13:00'),
    ChatUser(
        avatar: 'assets/images/userImage8.jpeg',
        name: 'Steve',
        content: 'Bruh ahsfushfusdhfs udhfusidfhsdufhsd iufhisduh',
        time: '15:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: AppTheme.appTitle,
        elevation: 0.0,
        backgroundColor: Colors.grey.shade100.withOpacity(0.8),
        title: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Container(
            color: Colors.grey.shade100.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Chats',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    alignment: Alignment.centerRight,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.pink,
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline))
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                            autofocus: false,
                            decoration: AppTheme.myInputDecor('Search..'))),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tempList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => RecentChatItem(
                          image: tempList[index].avatar,
                          name: tempList[index].name,
                          content: tempList[index].content,
                          time: tempList[index].time,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: tempList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ChatUserItem(
                          image: tempList[index].avatar,
                          name: tempList[index].name,
                          content: tempList[index].content,
                          time: tempList[index].time,
                          isRead: true),
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
