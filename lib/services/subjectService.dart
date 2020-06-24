import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzer/models/subject.dart';

class SubjectService {
  final subjectDB = Firestore.instance.collection("subject");

  Future add(SubjectModel model) async {
    return await subjectDB.add(model.toJson());
  }

  Future<List<SubjectModel>> getByinstId(instId) async{
    var result = await subjectDB.where("instructorId", isEqualTo: instId).getDocuments();
    List<SubjectModel> models = result.documents.map((e) => SubjectModel.fromMap(e.data, e.documentID)).toList();
    return models;
  }

  Future<List<SubjectModel>> get() async {
    var result = await subjectDB.getDocuments();
    return result.documents
        .map((e) => SubjectModel.fromMap(e.data, e.documentID))
        .toList();
  }
}
