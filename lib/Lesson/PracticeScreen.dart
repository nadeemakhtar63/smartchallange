import 'package:flutter/material.dart';
import 'package:smartchallange/Design/ListShowView.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  // var listshow=[
  //   {
  //     "audio": "catdogimage.png",
  //   "choice": [
  //     [
  //       "https://barashada.com/student/courses/visual/Airplane.png",
  //       1
  //     ],
  //     [
  //       "https://barashada.com/student/courses/visual/Bee.png",
  //       0
  //     ],
  //     [
  //       "https://barashada.com/student/courses/visual/Axe.png",
  //       0
  //     ]
  //     ],
  //     "audio": "dogsound.mp3",
  //     "choice": [
  //       [
  //         "https://barashada.com/student/courses/visual/Airplane.png",
  //         1
  //       ],
  //       [
  //         "https://barashada.com/student/courses/visual/Bee.png",
  //         0
  //       ],
  //       [
  //         "https://barashada.com/student/courses/visual/Axe.png",
  //         0
  //       ]
  //     ],
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListShowView(),
    );
  }
}
