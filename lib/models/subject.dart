
class SubjectModel {
  String id;
  String name;
  String instructorId;

  SubjectModel({this.name,this.instructorId});

  toJson() {
    return {"name": name,"instructorId":instructorId};
  }

  SubjectModel.fromMap(Map snapshot, String id)
      : id = id ?? '',
        name = snapshot["name"],
        instructorId = snapshot["instructorId"];
}
