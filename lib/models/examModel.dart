import 'package:quizzer/models/questionModel.dart';

class ExamModel {
  String id;
  String name;
  String description;
  int maxScore;
  List<QuestionModel> questions;
  String subjectId;

  ExamModel({this.maxScore, this.questions, this.subjectId});

  toJson() {
    return {
      "maxScore": maxScore,
      "subjectId": subjectId,
      "questions": questions,
      "description": description,
      "name": name
    };
  }

  ExamModel.fromMap(snapShot, id)
      : id = id,
        maxScore = snapShot["maxScore"] ?? 0,
        subjectId = snapShot["subjectId"] ?? '',
        name = snapShot["name"] ?? '',
        questions = mapQuestions(snapShot["questions"]) ?? [],
        description = snapShot["description"] ?? '';

  static List<QuestionModel> mapQuestions(snapshot) {
    List<QuestionModel> model = new List<QuestionModel>();
    for (var item in snapshot) {
      model.add(QuestionModel.fromMap(item));
    }
    return model;
  }
}
