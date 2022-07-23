import './screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: const ChatListScreen(),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.grey.shade100.withOpacity(0.8),
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
            ),
          ),
        ));
  }
}
