import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/examModel.dart';

class ExamService{
  final examDB = Firestore.instance.collection("exam");


  Future<List<ExamModel>> getData(subjectId) async {
    var result = await examDB.where("subjectId",isEqualTo: subjectId).getDocuments();
    List<ExamModel> exams = result.documents.map((el)=>ExamModel.fromMap(el.data, el.documentID)).toList(); 
    return exams.toList();
  }
}