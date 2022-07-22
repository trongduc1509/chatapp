import 'package:flutter/material.dart';
import '../components/component.dart';
import '../models/model.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({
    Key? key,
    required this.tempList,
  }) : super(key: key);

  final List<ChatUser> tempList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Container(
            color: Colors.grey.shade100.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Chats',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.pink,
                      onPressed: () {},
                      icon: const Icon(Icons.add_box_outlined))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20.0,
                            color: Colors.grey.shade600,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tempList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => RecentChatItem(
                          image: tempList[index].avatar,
                          name: tempList[index].name),
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
    );
  }
}
