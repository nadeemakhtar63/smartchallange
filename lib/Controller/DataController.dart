import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartchallange/ApiService/ApiService.dart';
import 'package:smartchallange/ModelClasse/AuthModel.dart';
import 'package:smartchallange/ModelClasse/CourseRequestModel.dart';
import 'package:smartchallange/ModelClasse/DashboardRequestModel.dart';
import 'package:smartchallange/ModelClasse/FlashCardActivityModel.dart';
import 'package:smartchallange/ModelClasse/GameActivityRequestModel.dart';
import 'package:smartchallange/ModelClasse/PracticeActivityModel.dart';
import 'package:smartchallange/ModelClasse/ReviewActivityModel.dart';
import 'package:smartchallange/ModelClasse/SectionRequestModel.dart';

class DataController extends GetxController {
  final ApiService apiService = ApiService();
// var dataModel = DataModel(success: false, data: []).obs;

  CourseRequestModel courseData = CourseRequestModel();
  DashboardRequestModel dashboardData = DashboardRequestModel();
  SectionRequestModel sectionData = SectionRequestModel();
  FlashCardActivityModel flashCardActivityData = FlashCardActivityModel();
  PracticeActivityModel practiceActivityData = PracticeActivityModel();
  ReviewActivityModel reviewActivityData = ReviewActivityModel();
  GameActivityModel gameActivityData = GameActivityModel();

  RxBool courseProcessing = false.obs;
  RxBool dashboardProcessing = false.obs;
  RxBool sectionProcessing = false.obs;
  RxBool flashCardDataProcessing = false.obs;
  RxBool practiceActivityDataProcessing = false.obs;
  RxBool reviewActivityDataProcessing = false.obs;
  RxBool gameActivityDataProcessing = false.obs;



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

  getFlashCardActivityData(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    flashCardDataProcessing.value = true;
    flashCardActivityData = await ApiService.requestFlashCardActivity(
        token: token, userId: userId, sectionId: sectionId, courseId: courseId);
    flashCardDataProcessing.value = false;
  }

  getPracticeActivityData(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    practiceActivityDataProcessing.value = true;
    practiceActivityData = await ApiService.requestPracticeActivity(
        token: token, userId: userId, sectionId: sectionId, courseId: courseId);
    practiceActivityDataProcessing.value = false;
  }


    getReviewActivityData(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    practiceActivityDataProcessing.value = true;
    reviewActivityData = await ApiService.requestReviewActivity(
        token: token, userId: userId, sectionId: sectionId, courseId: courseId);
    practiceActivityDataProcessing.value = false;
  }

     getGameActivityData(
      {required String token,
      required String userId,
      required String courseId,
      required String sectionId}) async {
    gameActivityDataProcessing.value = true;
    gameActivityData = await ApiService.requestGameActivity(
        token: token, userId: userId, sectionId: sectionId, courseId: courseId);
    gameActivityDataProcessing.value = false;
  }
}
