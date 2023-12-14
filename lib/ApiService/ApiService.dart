import 'dart:convert';

import 'package:get/get.dart';
// import 'package:smartchallange/ModelClasse/DataModel.dart';
import 'package:http/http.dart' as http;
class ApiService extends GetConnect {
  // Future<DataModel> fetchData() async {
  //   final String apiUr= 'https://barashada.com/api/script/api?action=activity-game';
  //
  //   Uri _uriPage = Uri.parse(
  //       'https://barashada.com/api/script/api?action=activity-game');
  //   try {
  //     var response = await http.post(
  //       _uriPage,
  //       headers: {
  //
  //         'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpZCI6Ijc0IiwiZmlyc3RfbmFtZSI6IkRhbml5YSIsImxhc3RfbmFtZSI6IlNhbWF0ZXIiLCJlbWFpbCI6ImRuc3NhbWF0ZXJAZ21haWwuY29tIiwiZXhwaXJlIjoxNjk3Mzc0MTk5fQ.mqcs82bwlcM836IqEkAHYZSIggGbkFB0UEAcc1Hy6BdKoJGAR14aD9s98lw2JYRNgzY2BD6Fyg0AHl33-qJ07HQZrjy2ckROiC7gqT5MSP-WoVc-uYqdMt93KaSStkqjeMYZh0OA43xKAJ5dGvGrJeAPmYYmrmgcFKwHP_iL7GT_YX6cR0p9chGJTKNP0-x63G_I3TTK6xJqPCJqSWOO2DlNdgCdBObQy5m73nwtFncRQ-GuIFajnpoErfz7BaKCxGmA_g96uWZo3ao7F4o0y6HfapDM15XkKISOdDIHJ9gZiG0ecTJdYeEtGQANSvhZf9mQs_g1m-jOinm6ZxUWgw'},
  //       body: {
  //         "Content-Type":"application/json; charset=utf-8",
  //         "course_id":"20","section_id":"126","user_id":"74"},
  //     );
  //     if (response.statusCode == 200) {
  //       // throw Exception('Error fetching data');
  //       print('Error  ${response.statusCode}: ${response.persistentConnection}');
  //       print('Response Body: ${response.bodyBytes}');
  //       print('Response Status Code: ${response.statusCode}');
  //       print('Response Body: ${response.body}');
  //       throw Exception('Error fetching data');
  //     }
  //     return DataModel.fromJson(jsonDecode(response.body));
  //   }
  //   catch (e) {
  //     print('Exception: $e');
  //     return null!;
  //   }
  // }
}
