import 'package:chatapp/models/model.dart';
import 'package:flutter/material.dart';

class RecentChatItem extends StatelessWidget {
  const RecentChatItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.content})
      : super(key: key);
  final String image;
  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/conversation',
          arguments: ChatUserArgument(
              chatUser:
                  UserModel(avaUrl: image, name: name, nickName: content))),
      child: Container(
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
      ),
    );
  }
}
