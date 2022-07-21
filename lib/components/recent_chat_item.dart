import 'package:flutter/material.dart';

class RecentChatItem extends StatelessWidget {
  const RecentChatItem({Key? key, required this.image, required this.name})
      : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          maxRadius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
