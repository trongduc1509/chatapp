class Message {
  final String content;
  final String sender;
  final String receiver;
  final bool isMine;

  Message(
      {required this.content,
      required this.sender,
      required this.receiver,
      required this.isMine});
}
