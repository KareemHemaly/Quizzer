import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/userDetailModel.dart';

class UserService {
  final db = Firestore.instance.collection('user');

  Future add(UserDetail user) async {
    return await db.add(user.toJson());
  }

  Future<UserDetail> getUser(uId) async {
    var result = await db.where("userId", isEqualTo: uId).getDocuments();
    if (result.documents.length > 0) {
      var user = result.documents.first;
      return UserDetail.fromMap(user.data, user.documentID);
    }
    else{
      return new UserDetail();
    }
  }
}
