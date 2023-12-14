import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:smartchallange/ModelClasse/CourseRequestModel.dart';
import 'package:smartchallange/ModelClasse/DashboardRequestModel.dart';
import 'package:smartchallange/ModelClasse/SectionRequestModel.dart';

class ApiService extends GetConnect {
  static Future<DashboardRequestModel> requestDashboard(
      {required String token, required String userId}) async {
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
      var request = http.Request('POST',
          Uri.parse('https://barashada.com/api/script/api?action=dashboard'));
      request.body = json.encode({"user_id": userId});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return DashboardRequestModel.fromJson(tempJson);
      } else {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return DashboardRequestModel.fromJson(tempJson);
      }
    } on Exception catch (e) {
      print(e);
      return DashboardRequestModel();
      // TODO
    }
  }

  static Future<SectionRequestModel> requestSection(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    try {
      var headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'text/plain'
      };
      var request = http.Request('POST',
          Uri.parse('https://barashada.com/api/script/api?action=section'));
      request.body = json.encode(
        {"user_id": userId, "course_id": courseId, "section_id": sectionId},
      );
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return SectionRequestModel.fromJson(tempJson);
      } else {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return SectionRequestModel.fromJson(tempJson);
      }
    } on Exception catch (e) {
      print(e);
      return SectionRequestModel();
      // TODO
    }
  }

  static Future<CourseRequestModel> requestCourse({
    required String token,
    required String userId,
    required String courseId,
  }) async {
    try {
      var headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'text/plain',
      };
      var request = http.Request('POST',
          Uri.parse('https://barashada.com/api/script/api?action=course'));
      request.body = json.encode({"user_id": userId, "course_id": courseId});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return CourseRequestModel.fromJson(tempJson);
      } else {
        var temp = (await response.stream.bytesToString());
        var tempJson = jsonDecode(temp);
        return CourseRequestModel.fromJson(tempJson);
      }
    } on Exception catch (e) {
      print(e);
      return CourseRequestModel();
      // TODO
    }
  }
}
