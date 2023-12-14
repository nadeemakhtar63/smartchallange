import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smartchallange/HomeScreen.dart';
import 'package:smartchallange/ModelClasse/AuthModel.dart';
// import 'package:smartchallange/ModelClasse/DataModel.dart';
class AuthService {
  Uri apiUrl =Uri.parse('https://barashada.com/api/script/api?action=login');

  Future<AuthModel?> authenticateUser(String username, String password) async {
    // final String? token = await getToken();
    // String token="eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpZCI6Ijc0IiwiZmlyc3RfbmFtZSI6IkRhbml5YSIsImxhc3RfbmFtZSI6IlNhbWF0ZXIiLCJlbWFpbCI6ImRuc3NhbWF0ZXJAZ21haWwuY29tIiwiZXhwaXJlIjoxNzAyNDg4MzYyfQ.D9xebtU-wEgWrB6CACpsqSyX0OKk_ycgFGySaaw-YJu4n2OxkbwH3T-kJZOLyeyj12imgDEkaw4HCUWvNSvDG1WdzFTyOCdn5avlhS7x5qi2ClyJ5KVW-9x359tHvJHuY9GMtxaBxCMVf2V04ZeuQPMp9SHm6Pvv73SYC1WTnDQEyv3sWO-kcDqlOrG6_lmAPPi_9CigYxGg3BeyBsZoo7X0cIWLdJY-KaDsULnABKai2-T3tqoUx_QWzGuLX7N2ioj6aSdKBYGegJ-aV_1eJypcbMaw2GRSWoaBsvMtSiz9fVXoLwQGHaJRF2boHGptakWmHO2m8WZhfnXCeOZx0Q";
    try {
      var headers = {
        'Content-Type': 'text/plain',
        // "Authorization":"Bearer $token"
      };
      var request = http.Request('POST', Uri.parse('https://barashada.com/api/script/api?action=login'));
      request.body = '''{"email":"$username","password":"$password"}''';
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
         var temp=(await response.stream.bytesToString());
         var tempJson = jsonDecode(temp);
         Get.to(HomeScreen());
         return AuthModel.fromJson(tempJson);
      }
      else {
        print(response.reasonPhrase);
      }
    } on Exception catch (e) {
      // TODO
    }

  }
}