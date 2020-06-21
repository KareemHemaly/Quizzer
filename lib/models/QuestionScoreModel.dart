class QuestionScoreModel {
  String answer;
  int position;
  double questionScore;

  QuestionScoreModel({this.answer, this.position, this.questionScore});

  toJson() {
    return {
      "answer": answer,
      "position": position,
      "questionScore": questionScore
    };
  }

  QuestionScoreModel.fromMap(snapshot)
      : answer = snapshot["answer"] ?? '',
        position = snapshot["position"] ?? 0,
        questionScore = snapshot["questionScore"].toDouble() ?? 0.0;
}
