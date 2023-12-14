class GameActivityModel {
  bool? success;
  List<List>? data;

  GameActivityModel({this.success, this.data});

  GameActivityModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    json['data'].forEach((v1) {
      data!.add(v1.forEach((v2) => Data.fromJson(v2)));
    });
    if (json['data'] != null) {
      data = json['data'].forea;
    }
  }
}

class Data {
  String? type;
  String? id;
  String? value;

  Data({this.type, this.id, this.value});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['value'] = this.value;
    return data;
  }
}
