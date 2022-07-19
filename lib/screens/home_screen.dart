import 'package:chatapp/components/chat_item.dart';
import 'package:chatapp/models/chat_user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chats',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            color: Colors.pink,
                            onPressed: () {},
                            icon: const Icon(Icons.add_box_outlined))
                      ],
                    ),
                  ),
                ),
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
                        )),
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
                        isRead: true)),
              ],
            )),
        bottomNavigationBar: SafeArea(
          child: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.grey.shade400,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Groups',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
          ),
        ));
  }
}