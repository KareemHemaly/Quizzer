import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/userDetailModel.dart';

class UserService{
  final db = Firestore.instance.collection('user');


  Future add(UserDetail user) async {
    return await db.add(user.toJson());
    
  }
}