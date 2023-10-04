class ExamListItemModel {
  int? id;
  String? title;
  String? subtitle;
  String? mClass;
  String? subject;
  String? chapter;
  String? startTime;
  String? endTime;
  int? time;
  int? marks;
  int? hard;
  int? totalQuestions;
  User? user;

  ExamListItemModel({this.id, this.title, this.subtitle, this.mClass, this.subject, this.chapter, this.startTime, this.endTime, this.time, this.marks, this.hard, this.totalQuestions, this.user});

  ExamListItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    mClass = json['class'];
    subject = json['subject'];
    chapter = json['chapter'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    time = json['time'];
    marks = json['marks'];
    hard = json['hard'];
    totalQuestions = json['total_questions'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['title'] = this.title;
  data['subtitle'] = this.subtitle;
  data['class'] = this.mClass;
  data['subject'] = this.subject;
  data['chapter'] = this.chapter;
  data['start_time'] = this.startTime;
  data['end_time'] = this.endTime;
  data['time'] = this.time;
  data['marks'] = this.marks;
  data['hard'] = this.hard;
  data['total_questions'] = this.totalQuestions;
  if (this.user != null) {
  data['user'] = this.user!.toJson();
  }
  return data;
  }
}

class User {
  String? id;
  String? name;
  String? image;

  User({this.id, this.name, this.image});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}