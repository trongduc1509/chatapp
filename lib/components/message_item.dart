import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem(
      {Key? key,
      required this.message,
      required this.avaUrl,
      required this.time,
      required this.isMine})
      : super(key: key);

  final MessageModel message;
  final String avaUrl;
  final String time;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    if (isMine) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 8.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            Expanded(
              flex: 4,
              child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    message.content,
                    maxLines: 100,
                    //softWrap: true,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage(avaUrl),
              maxRadius: 15,
            )
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avaUrl),
            maxRadius: 15,
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  message.content,
                  softWrap: true,
                  maxLines: 100,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
