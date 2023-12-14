class DashboardRequestModel {
  bool? success;
  Data? data;

  DashboardRequestModel({this.success, this.data});

  DashboardRequestModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  // Null? paymentMessage;
  int? courseCount;
  int? courseCompletedCount;
  int? certificatesCount;
  List<Courses>? courses;

  Data(
      {
      // this.paymentMessage,
      this.courseCount,
      this.courseCompletedCount,
      this.certificatesCount,
      this.courses});

  Data.fromJson(Map<String, dynamic> json) {
    // paymentMessage = json['payment_message'];
    courseCount = json['course_count'];
    courseCompletedCount = json['course_completed_count'];
    certificatesCount = json['certificates_count'];
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(new Courses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['payment_message'] = this.paymentMessage;
    data['course_count'] = this.courseCount;
    data['course_completed_count'] = this.courseCompletedCount;
    data['certificates_count'] = this.certificatesCount;
    if (this.courses != null) {
      data['courses'] = this.courses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Courses {
  String? courseId;
  String? courseName;
  String? courseStatus;
  String? coursePost;
  CourseProgress? courseProgress;

  Courses(
      {this.courseId,
      this.courseName,
      this.courseStatus,
      this.coursePost,
      this.courseProgress});

  Courses.fromJson(Map<String, dynamic> json) {
    courseId = json['course_id'];
    courseName = json['course_name'];
    courseStatus = json['course_status'];
    coursePost = json['course_post'];
    courseProgress = json['course_progress'] != null
        ? new CourseProgress.fromJson(json['course_progress'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course_id'] = this.courseId;
    data['course_name'] = this.courseName;
    data['course_status'] = this.courseStatus;
    data['course_post'] = this.coursePost;
    if (this.courseProgress != null) {
      data['course_progress'] = this.courseProgress!.toJson();
    }
    return data;
  }
}

class CourseProgress {
  int? total;
  int? completed;

  CourseProgress({this.total, this.completed});

  CourseProgress.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['completed'] = this.completed;
    return data;
  }
}
