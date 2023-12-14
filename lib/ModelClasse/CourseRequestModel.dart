class CourseRequestModel {
  bool? success;
  Data? data;

  CourseRequestModel({this.success, this.data});

  CourseRequestModel.fromJson(Map<String, dynamic> json) {
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
  String? courseTitle;
  Progress? progress;
  List<Sections>? sections;

  Data({this.courseTitle, this.progress, this.sections});

  Data.fromJson(Map<String, dynamic> json) {
    courseTitle = json['course_title'];
    progress = json['progress'] != null
        ? new Progress.fromJson(json['progress'])
        : null;
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course_title'] = this.courseTitle;
    if (this.progress != null) {
      data['progress'] = this.progress!.toJson();
    }
    if (this.sections != null) {
      data['sections'] = this.sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Progress {
  int? completed;
  int? total;
  String? lastActivity;

  Progress({this.completed, this.total, this.lastActivity});

  Progress.fromJson(Map<String, dynamic> json) {
    completed = json['completed'];
    total = json['total'];
    lastActivity = json['last_activity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['completed'] = this.completed;
    data['total'] = this.total;
    data['last_activity'] = this.lastActivity;
    return data;
  }
}

class Sections {
  String? sectionId;
  String? sectionName;
  String? sectionDripContent;
  String? sectionSeq;
  int? sectionTopics;
  int? sectionQuizzes;
  SectionProgress? sectionProgress;
  List<Dropdown>? dropdown;

  Sections(
      {this.sectionId,
      this.sectionName,
      this.sectionDripContent,
      this.sectionSeq,
      this.sectionTopics,
      this.sectionQuizzes,
      this.sectionProgress,
      this.dropdown});

  Sections.fromJson(Map<String, dynamic> json) {
    sectionId = json['section_id'];
    sectionName = json['section_name'];
    sectionDripContent = json['section_drip_content'];
    sectionSeq = json['section_seq'];
    sectionTopics = json['section_topics'];
    sectionQuizzes = json['section_quizzes'];
    sectionProgress = json['section_progress'] != null
        ? new SectionProgress.fromJson(json['section_progress'])
        : null;
    if (json['dropdown'] != null) {
      dropdown = <Dropdown>[];
      json['dropdown'].forEach((v) {
        dropdown!.add(new Dropdown.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['section_id'] = this.sectionId;
    data['section_name'] = this.sectionName;
    data['section_drip_content'] = this.sectionDripContent;
    data['section_seq'] = this.sectionSeq;
    data['section_topics'] = this.sectionTopics;
    data['section_quizzes'] = this.sectionQuizzes;
    if (this.sectionProgress != null) {
      data['section_progress'] = this.sectionProgress!.toJson();
    }
    if (this.dropdown != null) {
      data['dropdown'] = this.dropdown!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SectionProgress {
  int? total;
  int? completed;

  SectionProgress({this.total, this.completed});

  SectionProgress.fromJson(Map<String, dynamic> json) {
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

class Dropdown {
  String? type;
  String? id;
  String? title;
  int? status;

  Dropdown({this.type, this.id, this.title, this.status});

  Dropdown.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    title = json['title'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }
}
