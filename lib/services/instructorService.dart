import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/models/userDetailModel.dart';
import 'package:quizzer/models/userModel.dart';

class InstructorsService{

  final studentSubjectDB = Firestore.instance.collection("instructorSubject");
  final userDB = Firestore.instance.collection("user");

 

  Future<List<UserDetail>> getInstructors() async{
    var result = await userDB.where("type",isEqualTo: 'instructor').getDocuments();
    List<UserDetail> models = result.documents.map((e) => UserDetail.fromMap(e.data, e.documentID)).toList();
    return models;
  }

}