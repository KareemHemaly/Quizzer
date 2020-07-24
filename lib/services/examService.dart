import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/examModel.dart';

class ExamService {
  final examDB = Firestore.instance.collection("exam");

  Future<List<ExamModel>> get() async {
    var result = await examDB.getDocuments();
    return result.documents
        .map((e) => ExamModel.fromMap(e.data, e.documentID))
        .toList();
  }

  Future<ExamModel> getByID(examId) async {
    var result = await examDB.document(examId).get();
    if (result.data != null) {
      ExamModel exams = ExamModel.fromMap(result.data, result.documentID);
      return exams;
    }
    return new ExamModel();
  }

  Future<List<ExamModel>> getData(subjectId) async {
    var result =
        await examDB.where("subjectId", isEqualTo: subjectId).getDocuments();
    List<ExamModel> exams = result.documents
        .map((el) => ExamModel.fromMap(el.data, el.documentID))
        .toList();
    return exams.toList();
  }

  Future create(ExamModel data) async {
    var result = await examDB.add(data.toJson());
    return result;
  }
}
