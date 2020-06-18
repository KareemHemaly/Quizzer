import 'package:flutter/cupertino.dart';

class SubjectModel {
  String id;
  String name;

  SubjectModel({this.name});

  toJson() {
    return {"name": name};
  }

  SubjectModel.fromMap(Map snapshot, String id)
      : id = id ?? '',
        name = snapshot["name"];
}
