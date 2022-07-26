import 'package:chatapp/constants/constant_item.dart';
import 'package:flutter/material.dart';
import '../components/component.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
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
                        itemCount: AppTheme.tempList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => RecentChatItem(
                          image: AppTheme.tempList[index].avaUrl,
                          name: AppTheme.tempList[index].name,
                          content: AppTheme.tempList[index].nickName!,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: AppTheme.tempList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ChatUserItem(
                          image: AppTheme.tempList[index].avaUrl,
                          name: AppTheme.tempList[index].name,
                          content: AppTheme.tempList[index].nickName!,
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
