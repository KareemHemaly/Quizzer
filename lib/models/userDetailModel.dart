class UserDetail {
  String id;
  String userName;
  String type;
  String userId;

  UserDetail({this.userName, this.type, this.userId});

  toJson() {
    return {"userName": userName, "type": type, "userId": userId};
  }

  UserDetail.fromMap(snapshot, id)
      : id = id,
        userName = snapshot["userName"] ?? '',
        type = snapshot["type"] ?? '',
        userId = snapshot["userId"] ?? '';
}
