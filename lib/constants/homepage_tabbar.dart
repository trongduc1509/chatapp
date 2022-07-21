import 'package:flutter/material.dart';
import './constant_item.dart';

class HomePageTabBar extends StatelessWidget {
  const HomePageTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController? tabController;
  static final List<String> tabItems = ['Messages', 'Groups', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 80,
      color: Theme.of(context).primaryColor,
      child: TabBar(
        indicator: ShapeDecoration(
            color: Colors.pink.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        controller: tabController,
        tabs: tabItems.map((e) => TabBarItem(name: e)).toList(),
      ),
    );
  }
}
