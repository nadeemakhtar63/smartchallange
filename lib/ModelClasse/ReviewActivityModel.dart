class ReviewActivityModel {
	bool? success;
	List<Data>? data;

	ReviewActivityModel({this.success, this.data});

	ReviewActivityModel.fromJson(Map<String, dynamic> json) {
		success = json['success'];
		if (json['data'] != null) {
			data = <Data>[];
			json['data'].forEach((v) { data!.add(new Data.fromJson(v)); });
		}
	}

}

class Data {
	String? image;
	String? audio;
	List<List>? choices;

	Data({this.image, this.audio, this.choices});

	Data.fromJson(Map<String, dynamic> json) {
		image = json['image'];
		audio = json['audio'];
    choices = json['choices'];
	}


}

