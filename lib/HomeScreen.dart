import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartchallange/AudioPlayScreen.dart';
import 'package:smartchallange/Controller/DataController.dart';
import 'package:smartchallange/Lesson/LessonMainScreen.dart';
import 'package:smartchallange/PlayScreen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  // final DataController controller = Get.put(DataController());
  final Map<String, dynamic> data = {
    "success": true,
    "data": {
      "payment_message": null,
      "course_count": 4,
      "course_completed_count": 1,
      "certificates_count": 0,
      "courses":
      [
        {
          "course_id": "16",
          "course_name": " Math grade 1 course",
          "course_status": "2",
          "course_post": "https://barashada.com/student/courses/3.png",
          "course_progress": {"total": 59, "completed": 59}
        },
        {
          "course_id": "18",
          "course_name": " Math grade 2 course",
          "course_status": "0",
          "course_post": "https://barashada.com/student/courses/4.png",
          "course_progress": {"total": 52, "completed": 52}
        },
        {
          "course_id": "15",
          "course_name": "KinderGarten Math",
          "course_status": "0",
          "course_post": "https://barashada.com/student/courses/1.png",
          "course_progress": {"total": 30, "completed": 30}
        },
        {
          "course_id": "20",
          "course_name": "Alphabet",
          "course_status": "0",
          "course_post": "https://barashada.com/student/courses/3.png",
          "course_progress": {"total": 4, "completed": 0}
        }
      ]
    }
  };
  var levelofchallange=[
    {
      "name":"Level 1",
      "image":"assets/cartoon/cartoonone.png",
    },
    {
      "name":"Level 2",
      "image":"assets/cartoon/cartoonfour.png",
    },
    {
      "name":"Level 3",
      "image":"assets/cartoon/cartoonsixe.png",
    },
    {
      "name":"Level 4",
      "image":"assets/cartoon/cartoonthree.png",
    }
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xff227e9a),
    appBar: AppBar(
      backgroundColor:Color(0xff227e9a),
      foregroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    // body: Obx(
    // () => controller.dataModel.value.success
    // ? ListView.builder(
    // itemCount: controller.dataModel.value.data.length,
    // itemBuilder: (context, index) {
    // List<Map<String, String>> item = controller.dataModel.value.data[index];
    // // Build your UI using the 'item' data
    // return ListTile(
    // title: Text(item[0]['value'] ?? ''),
    // );
    // },
    // ): Center(
    // child: CircularProgressIndicator(),
    // ),
    // ),
    // );
    // }
    // }
    // body:
    // Column(
    //     children: [
    //       Container(
    //         width: double.infinity,
    //
    //         height: MediaQuery.of(context).size.height*0.25,
    //         child: Image.asset("assets/catdogimage.png"),
    //       ),
    //       Container(
    //         decoration:  BoxDecoration(
    //             boxShadow: [
    //             BoxShadow(
    //             //offset: Offset(0, 4),
    //            // color: Color(0xC75547B2), //edited
    //           spreadRadius:0.5,
    //           blurRadius: 1 //edited
    //       )
    //     ],
    //        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    //        // color:    Colors.black12,
    //        gradient: LinearGradient(
    //        colors:
    //        [
    //          Color(0xc78a79f5),
    //          Color(0xffa465b6)
    //        ],
    //        begin: Alignment.topLeft,
    //        end: Alignment.bottomRight,
    //         ),
    //      ),
    //         width: double.infinity,
    //         height: MediaQuery.of(context).size.height*0.75,
    //         child: StreamBuilder<int>(
    //           stream:Stream<int>.fromIterable([levelofchallange.length]),
    //           builder: (context,item){
    //             return GridView.builder(
    //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                   crossAxisCount: 2, // Number of columns
    //                   crossAxisSpacing: 15.0, // Spacing between columns
    //                   mainAxisSpacing: 15.0, // Spacing between rows
    //                 ),
    //               itemCount:levelofchallange.length ,
    //                 itemBuilder: (context, index)
    //             {
    //               var items = levelofchallange[index];
    //               return Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: InkWell(
    //                   onTap: (){
    //                     showModalBottomSheet(
    //                       backgroundColor: Color(0xc713cfe7).withOpacity(0.9),
    //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),),
    //                         context: context,
    //                         builder: (context){
    //                           return Container(
    //                             // height: 200,
    //                             decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
    //                             ),
    //                             child: Column(
    //                              mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                               children: [
    //                                 Padding(
    //                                   padding: const EdgeInsets.only(right: 8.0),
    //                                   child: InkWell(
    //                                     onTap: (){
    //                                       Navigator.pop(context);
    //                                     },
    //                                     child: Align(
    //                                       alignment: Alignment.topRight,
    //                                       child: Icon(Icons.highlight_remove,size: 35,color: Colors.red,),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding: const EdgeInsets.all(8.0),
    //                                   child: Divider(height: 2,color: Colors.black,),
    //                                 ),
    //                                 InkWell(
    //                                   onTap: (){
    //                                   Get.to(MyHomePage());
    //                                   },
    //                                   child: SizedBox(
    //                                     child: Row(
    //                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                                       children: [
    //                                       Icon(Icons.audiotrack_rounded,size: 45,),
    //                                       Text("Audio",style: TextStyle(fontSize: 20),)
    //
    //                                     ],),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding: const EdgeInsets.all(8.0),
    //                                   child: Divider(height: 2,color: Colors.black,),
    //                                 ),
    //                                 InkWell(
    //                                   onTap: (){
    //                                     Get.to(LessonMainSScreen());
    //                                   },
    //                                   child: SizedBox(
    //                                     child: Row(
    //                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                                       children: [
    //                                         Icon(Icons.menu_book_outlined,size: 45,),
    //                                         Text("Contents",style: TextStyle(fontSize: 20),)
    //
    //                                       ],),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           );
    //                         });
    //                   },
    //                   child: Card(
    //                     color: Colors.transparent,
    //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    //                       // elevation: 5,
    //                       child:Container(
    //                         height: 120,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(20),
    //                             image: DecorationImage(image: AssetImage(items["image"]!))
    //                           ),
    //                           child: Align(
    //                               alignment: Alignment.bottomCenter,
    //                               child: Container(
    //                                   color: Colors.black38,
    //                                   child: Text(items["name"]!,style: TextStyle(color: Colors.white,fontSize: 20),))))
    //                   ),
    //                 ),
    //               );
    //             });
    //           },
    //         ),
    //       ),
    //     ],
    //   ),
    body: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              // color: Colors.teal,
              image: DecorationImage(image: AssetImage("assets/coursebackimage.jpg",),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)
            ),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Courses: ${data['data']['course_count']}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                Text('Completed Courses: ${data['data']['course_completed_count']}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                Text('Certificates Earned: ${data['data']['certificates_count']}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ),
        ),
      // SizedBox(height: 20),
      ...List.generate(
          data['data']['courses'].length, (index) {
      final course = data['data']['courses'][index];
      return InkWell(
        onTap: (){
        Get.to(LessonMainSScreen());
        // showModalBottomSheet(
                              //   backgroundColor: Color(0xc713cfe7).withOpacity(0.9),
                              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),),
                              //     context: context,
                              //     builder: (context){
                              //       return Container(
                              //         // height: 200,
                              //         decoration: BoxDecoration(
                              //           borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                              //         ),
                              //         child: Column(
                              //          mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //           children: [
                              //             Padding(
                              //               padding: const EdgeInsets.only(right: 8.0),
                              //               child: InkWell(
                              //                 onTap: (){
                              //                   Navigator.pop(context);
                              //                 },
                              //                 child: Align(
                              //                   alignment: Alignment.topRight,
                              //                   child: Icon(Icons.highlight_remove,size: 35,color: Colors.red,),
                              //                 ),
                              //               ),
                              //             ),
                              //             const Padding(
                              //               padding: EdgeInsets.all(8.0),
                              //               child: Divider(height: 2,color: Colors.black,),
                              //             ),
                              //             // InkWell(
                              //             //   onTap: (){
                              //             //   Get.to(MyHomePage());
                              //             //   },
                              //             //   child: const SizedBox(
                              //             //     child: Row(
                              //             //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //             //       children: [
                              //             //       Icon(Icons.audiotrack_rounded,size: 45,),
                              //             //       Text("Audio",style: TextStyle(fontSize: 20),)
                              //             //     ],),
                              //             //   ),
                              //             // ),
                              //             // const Padding(
                              //             //   padding: EdgeInsets.all(8.0),
                              //             //   child: Divider(height: 2,color: Colors.black,),
                              //             // ),
                              //             InkWell(
                              //               onTap: (){
                              //                 Get.to(LessonMainSScreen());
                              //               },
                              //               child: const SizedBox(
                              //                 child: Row(
                              //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //                   children: [
                              //                     Icon(Icons.menu_book_outlined,size: 45,),
                              //                     Text("Contents",style: TextStyle(fontSize: 20),)
                              //
                              //                   ],),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       );
                              //     });
        },
        child: CourseCard(
        courseId: course['course_id'],
        courseName: course['course_name'],
        courseStatus: course['course_status'],
        coursePost: course['course_post'],
        courseProgress: course['course_progress'],
        ),
      );
      }
      ),
      ],
      ),
    ),
    );
  }
}
class CourseCard extends StatelessWidget {
  final String courseId;
  final String courseName;
  final String courseStatus;
  final String coursePost;
  final Map<String, dynamic> courseProgress;
  const CourseCard({
    required this.courseId,
    required this.courseName,
    required this.courseStatus,
    required this.coursePost,
    required this.courseProgress,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/couseback.jpg"),fit: BoxFit.cover)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  coursePost,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover
              ),
              Container(
                // color: Colors.white.withOpacity(0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: $courseId',style: TextStyle(color: Colors.white),),
                    Text('Name: $courseName',style: TextStyle(color: Colors.white)),
                    Text('Status: $courseStatus',style: TextStyle(color: Colors.white)),
                    Text('Total Progress: ${courseProgress['total']}',style: TextStyle(color: Colors.white)),
                    Text('Completed Progress: ${courseProgress['completed']}',style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Container()
              // SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
  }
}
//     );
//   }
// }
