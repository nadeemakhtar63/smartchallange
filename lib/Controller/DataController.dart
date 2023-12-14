import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartchallange/ApiService/ApiService.dart';
import 'package:smartchallange/ModelClasse/AuthModel.dart';
import 'package:smartchallange/ModelClasse/CourseRequestModel.dart';
import 'package:smartchallange/ModelClasse/DashboardRequestModel.dart';
import 'package:smartchallange/ModelClasse/SectionRequestModel.dart';

class DataController extends GetxController {
  final ApiService apiService = ApiService();
// var dataModel = DataModel(success: false, data: []).obs;

  CourseRequestModel courseData = CourseRequestModel();
  DashboardRequestModel dashboardData = DashboardRequestModel();
  SectionRequestModel sectionData = SectionRequestModel();

  RxBool courseProcessing = false.obs;
  RxBool dashboardProcessing = false.obs;
  RxBool sectionProcessing = false.obs;

  @override
  void onInit() {
    // fetchData();
    super.onInit();
  }

  getSectionData({
    required String token,
    required String userId,
    required String courseId,
    required String sectionId,
  }) async {
    sectionProcessing.value = true;
    sectionData = await ApiService.requestSection(
        token: token, userId: userId, courseId: courseId, sectionId: sectionId);
    sectionProcessing.value = false;
  }

  getDashboardData({
    required String token,
    required String userId,
  }) async {
    dashboardProcessing.value = true;
    dashboardData =
        await ApiService.requestDashboard(token: token, userId: userId);
    dashboardProcessing.value = false;
  }

  getCourseData(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    courseProcessing.value = true;
    courseData = await ApiService.requestCourse(
      token: token,
      userId: userId,
      courseId: courseId,
    );
    courseProcessing.value = false;
  }
}
