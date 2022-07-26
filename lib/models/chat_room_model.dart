class ChatRoomModel {
  final int? id;
  final List<int> userIds;
  final List<int> messageIds;

  ChatRoomModel({this.id, required this.userIds, required this.messageIds});
}
