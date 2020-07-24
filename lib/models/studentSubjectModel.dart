import 'dart:convert';
import 'dart:core';

import 'package:quizzer/models/QuestionScoreModel.dart';

class StudentSubjectModel {
  String id;
  String examId;
  dynamic score;
  String studentId;
  String subjectId;
  List<QuestionScoreModel> questionsScore;

  StudentSubjectModel(
      {this.examId,
      this.score,
      this.studentId,
      this.subjectId,
      this.questionsScore});

  toJson() {
    return {
      "examId": examId,
      "score": score,
      "studentId": studentId,
      "subjectId": subjectId,
      "questionsScore": jsonEncode(questionsScore),
    };
  }

  StudentSubjectModel.fromMap(snapShot, id)
      : id = id,
        examId = snapShot["examId"] ?? '',
        score = snapShot["score"].toDouble() ?? 0.0,
        studentId = snapShot["studentId"] ?? '',
        subjectId = snapShot["subjectId"] ?? '',
        questionsScore = mapQuestionScore(snapShot["questionsScore"]) ?? [];

  static List<QuestionScoreModel> mapQuestionScore(snapshot) {
    List<QuestionScoreModel> model = new List<QuestionScoreModel>();
    for (var item in snapshot) {
      model.add(QuestionScoreModel.fromMap(item));
    }
    return model;
  }
}
