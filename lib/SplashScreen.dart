import 'dart:async';
import 'dart:io';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smartchallange/AnimatedIconWidget.dart';
import 'package:smartchallange/AuthScreen/LoginScreen.dart';
import 'package:smartchallange/HomeScreen.dart';
// import 'package:get/get.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:rapid_mover_admin/AnimatedIconWidget.dart';
// import 'package:rapid_mover_admin/AuthConstant/AuthConstant.dart';
// import 'package:rapid_mover_admin/ClintPanel/HomeScreen/MainScreen.dart';
// import 'package:rapid_mover_admin/EmployPanel/HomeScreen.dart';
// import 'package:rapid_mover_admin/EmployPanel/NavBarHomePage.dart';
// import 'package:rapid_mover_admin/User%20type.dart';
// import '../MainScreen.dart';
// import 'package:ringtone_set/ringtone_set.dart';
// import 'AuthScreens/Login.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  // screenChose(){
  //
  //   String? userTaype;
  //   // final SharedPreferences prefs = await _prefs;
  //   // if( auth.currentUser==null) {
  //   //   Timer(Duration(seconds: 5), () =>Get.to(()=>LoginType()));
  //   // }
  //   // else{
  //   //   firebaseFirestore.collection('userprofile').where(
  //   //       'uid', isEqualTo: auth.currentUser!.uid).get().then((value) =>
  //   //   {
  //   //     value.docs.forEach((element) {
  //   //       userTaype = element.data()['usertype'];
  //   //       if (userTaype == "customer") {
  //           Timer(Duration(seconds: 5), () =>
  //               Get.offAll(() => HomeScreen()));
  //         // }
  //         // if (userTaype == "employee") {
  //         //   Timer(Duration(seconds: 5), () =>
  //         //       Get.offAll(() => EmployeeTabScreen()));
  //         // }
  //         // if (userTaype == "admin") {
  //         //   Timer(Duration(seconds: 5), () =>
  //         //       Get.offAll(() => AdminMainScreen()));
  //         // }
  //         // else
  //         //   {
  //         //     Get.to(()=>LoginType());
  //         //   }
  //   //     })
  //   //   });
  //   // }
  //   // String screen=_prefs.
  //   // User? user = FirebaseAuth.instance.currentUser;
  //   // if(prefs)
  //   // {
  //   //   Timer(Duration(seconds: 5),()=> Get.offAll(()=>UserLogInLogInScreen()));
  //   // }
  //   // else
  //   // {
  //   //   Timer(Duration(seconds: 5),()=> Get.offAll(()=>MainScreen()));
  //   // }
  // }
  // void requestPermission()async{
  //   FirebaseMessaging messaging=FirebaseMessaging.instance;
  //   NotificationSettings settings=await messaging.requestPermission(
  //       alert: true,
  //       announcement: false,
  //       badge: true,
  //       carPlay: false,
  //       criticalAlert: false,
  //       provisional: false,
  //       sound: true
  //   );
  //   print("permission");
  //   if(settings.authorizationStatus==AuthorizationStatus.authorized){
  //     print("user garanted permission");
  //   }
  //   else if(settings.authorizationStatus==AuthorizationStatus.provisional)
  //   {
  //     print("user garanted provisional permission");
  //   }
  //   else
  //   {
  //     print("user denied and not grant any  permission");
  //   }
  // }

  @override
  void initState() {
    // requestPermission();
    // screenChose();
    FlutterRingtonePlayer.play(fromAsset: "assets/birdsong.wav");
    // final File ringtoneFile = File("track.mp3");
    //
    // RingtoneSet.setRingtoneFromFile(ringtoneFile);
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () =>Get.offAll(()=>LogInScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfc8a79f5),
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.white,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Center(child: Image.asset('assets/catdogimage.png')),
          ),
          Container(
            child: AnimatedIconWidget(),
          ),
          Text("Smart  Challange",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Smart Quests",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),),
          )
        ],
      ),
    );
  }
}
