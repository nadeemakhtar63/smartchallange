class PracticeActivityModel {
  bool? success;
  List<Data>? data;

  PracticeActivityModel({this.success, this.data});

  PracticeActivityModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  String? audio;
  List<List>? choices;

  Data({this.audio, this.choices});

  Data.fromJson(Map<String, dynamic> json) {
    audio = json['audio'];
    if (json['choices'] != null) {
      choices = <List>[];
      choices = json['choices'];
    }
  }
}
