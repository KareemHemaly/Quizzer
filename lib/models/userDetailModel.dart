class UserDetail {
  String id;
  String userName;
  String type;
  String userId;

  toJson() {
    return {"userName": userName, "type": type, "userId": userId};
  }
}
