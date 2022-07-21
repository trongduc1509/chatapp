import 'package:chatapp/constants/constant_item.dart';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) => Text(
        name,
        style: AppTheme.tabItems,
      );
}
