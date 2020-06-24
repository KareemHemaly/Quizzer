import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/models/userDetailModel.dart';
import 'package:quizzer/models/userModel.dart';

class StudentService{

  final studentSubjectDB = Firestore.instance.collection("studentSubject");
  final userDB = Firestore.instance.collection("user");

  Future<List<StudentSubjectModel>> getByexamId(examId) async{
    var result = await studentSubjectDB.where("examId", isEqualTo: examId).getDocuments();
    List<StudentSubjectModel> models = result.documents.map((e) => StudentSubjectModel.fromMap(e.data, e.documentID)).toList();
    return models;
  }

  Future<List<StudentSubjectModel>> getStudentSbujectModelByID(studentId) async{
    var result = await studentSubjectDB.where("studentId", isEqualTo: studentId).getDocuments();
    List<StudentSubjectModel> models = result.documents.map((e) => StudentSubjectModel.fromMap(e.data, e.documentID)).toList();
    return models;
  }

  Future<List<UserDetail>> getStudents() async{
    var result = await userDB.where("type",isEqualTo: 'student').getDocuments();
    List<UserDetail> models = result.documents.map((e) => UserDetail.fromMap(e.data, e.documentID)).toList();
    return models;
  }

}