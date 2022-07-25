class UserModel {
  final int id;
  final String name;
  final String avaUrl;
  final String? nickName;

  UserModel(
      {required this.id,
      required this.name,
      required this.avaUrl,
      this.nickName});
}
