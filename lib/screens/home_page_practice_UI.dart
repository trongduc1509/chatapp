import 'package:chatapp/components/component.dart';
import 'package:chatapp/constants/constant_item.dart';
import 'package:flutter/material.dart';

import '../models/chat_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  final List<String> tabItems = ['Messages', 'Groups', 'Profile'];

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
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Chats', style: AppTheme.appTitle),
      ),
      body: Column(
        children: [
          HomePageTabBar(tabController: tabController),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(
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
                                enabledBorder: AppTheme.outlineInputBorder,
                                focusedBorder: AppTheme.outlineInputBorder,
                              ),
                            )),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: tempList.length,
                            shrinkWrap: true,
                            itemBuilder: ((context, index) => RecentChatItem(
                                  image: tempList[index].avatar,
                                  name: tempList[index].name,
                                )),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: tempList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ChatUserItem(
                                image: tempList[index].avatar,
                                name: tempList[index].name,
                                content: tempList[index].content,
                                time: tempList[index].time,
                                isRead: (index % 2 == 0) ? true : false),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Text('Groups'),
                  ),
                  Center(
                    child: Text('Profile'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).backgroundColor,
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
