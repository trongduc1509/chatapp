import 'package:flutter/material.dart';
import 'package:chatapp/constants/constant_item.dart';

class ChatInputSpace extends StatefulWidget {
  const ChatInputSpace({Key? key}) : super(key: key);

  @override
  State<ChatInputSpace> createState() => _ChatInputSpaceState();
}

class _ChatInputSpaceState extends State<ChatInputSpace> {
  final TextEditingController _inputController = TextEditingController();
  String _currentMessage = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.insert_emoticon)),
          Expanded(
            child: TextField(
              controller: _inputController,
              keyboardType: TextInputType.multiline,
              maxLines: 6,
              minLines: 1,
              decoration: AppTheme.myInputDecor('Aa'),
              onChanged: (value) => _currentMessage = value,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
