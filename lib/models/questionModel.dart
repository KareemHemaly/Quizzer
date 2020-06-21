class QuestionModel {
  String question;
  String answer;
  int maxScore;
  String type;
  int position;
  List<dynamic> typeUtilities;

  QuestionModel(
      {this.answer,
      this.type,
      this.maxScore,
      this.question,
      this.typeUtilities});

  toJson() {
    return {
      "answer": answer,
      "maxScore": maxScore,
      "question": question,
      "typeUtilities": typeUtilities,
      "type": type,
      "position":position
    };
  }

  QuestionModel.fromMap(Map snapshot)
      : answer = snapshot["answer"],
        maxScore = snapshot["maxScore"],
        question = snapshot["question"],
        typeUtilities = snapshot["typeUtilities"],
        position = snapshot["position"],
        type = snapshot["type"];
}
