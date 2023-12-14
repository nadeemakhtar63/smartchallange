import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smartchallange/GameScreen/GameScreenDesign.dart';
import 'package:smartchallange/Lesson/FlashCardScreen.dart';
import 'package:smartchallange/Lesson/PracticeScreen.dart';
import 'package:smartchallange/Lesson/ReviewScreen.dart';
import 'package:smartchallange/PlayScreen.dart';

class LessonMainSScreen extends StatefulWidget {
  const LessonMainSScreen({super.key});

  @override
  State<LessonMainSScreen> createState() => _LessonMainSScreenState();
}

class _LessonMainSScreenState extends State<LessonMainSScreen> {
  var levelofchallange=[
    {
      "name":"Lesson 1",
      "image":"assets/cartoon/cartoonone.png",
    },
    {
      "name":"Lesson 2",
      "image":"assets/cartoon/cartoonfour.png",
    },
    {
      "name":"Lesson 3",
      "image":"assets/cartoon/cartoonsixe.png",
    },
    {
      "name":"Lesson 4",
      "image":"assets/cartoon/cartoonthree.png",
    }
  ];
  final List<Map<String, String>> unite =[
    {
      "image":"assets/unites/flashcard.png",
      'name':"Flash Card"
    },
    {
      "image":'assets/unites/practice.png',
      'name':'Practice'
    },
    {
      "image":'assets/unites/game.png',
      'name':'Game'
    },
    {
      "image":'assets/unites/review.png',
      'name':"Review"
    },
    {
      "image":'assets/unites/story.png',
      'name':'Story'
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width*0.98,
            child: Card(
            color: Color(0xffa465b6).withOpacity(0.9),
      elevation: 10,
      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2,color: Colors.yellow),
                    image: DecorationImage(image: AssetImage("assets/catdogimage.png"))
                  ),
                ),
                Text("Smart Challenge",style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
            ),
          ),
          Expanded(
            child: StreamBuilder<int>(
              stream: Stream<int>.fromIterable([levelofchallange.length]),
              builder: (context, item) {
                return ListView.builder(
                    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2, // Number of columns
                    //   crossAxisSpacing: 15.0, // Spacing between columns
                    //   mainAxisSpacing: 15.0, // Spacing between rows
                    // ),
                    itemCount: levelofchallange.length,
                    itemBuilder: (context, index) {
                      var items = levelofchallange[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Color(0xc713cfe7).withOpacity(0.2),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    // height: 200,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20))
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child:  Align(
                                              alignment: Alignment.topRight,
                                              child: Icon(
                                                Icons.highlight_remove, size: 35,
                                                color: Colors.red,),
                                            ),
                                          ),
                                        ),
                                    Expanded(
                                    child: GridView.builder(
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    ),
                                    itemCount: unite.length,
                                    itemBuilder: (context, index) {
                                    return InkWell(
                                     onTap: (){
                                       if(unite[index][ 'name']=="Flash Card")
                                         {
                                           Get.to(FlashCard());
                                         }
                                       if(unite[index][ 'name']=="Review")
                                       {
                                         Get.to(ReviewScreen());
                                       }
                                       if(unite[index][ 'name']=="Practice")
                                       {
                                         Get.to(PracticeScreen());
                                       }
                                       if(unite[index][ 'name']=="Game")
                                       {
                                         Get.to(GameScrennDesign());
                                       }
                                     },
                                      child: Card(
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      child:Container(
                                      width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                width:45,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(unite[index]["image"]!)),
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Colors.amber,
                                                ),
                                                // child: Image.asset(unite[index]["image"]!)
                                            ),
                                            Text(unite[index]["name"]!)
                                          ],
                                        ),
                                      )
                                      ),
                                    );
                                    },
                                    ),
                                  ),
                                  ]
                                    )
                                  );

                                }
                                );
                          },
                          child: Card(
                              color: Color(0xc713cfe7).withOpacity(0.9),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              // elevation: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        // image: DecorationImage(image: AssetImage(
                                        //     items["image"]!)
                                    color: Colors.amber
                                    ),
                                child: Center(child: Text(index.toString(), style: TextStyle(
                                    color: Colors.white, fontSize: 20)),),
                                    ),
                                  // ),
                                  Container(
                                      height: 120,
                                      // decoration: BoxDecoration(
                                      //     borderRadius: BorderRadius.circular(20),
                                      //     image: DecorationImage(image: AssetImage(
                                      //         items["image"]!))
                                      // ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              // color: Colors.black38,
                                              child: Text(items["name"]!, style: TextStyle(
                                                  color: Colors.white, fontSize: 20),)))),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        // image: DecorationImage(image: AssetImage(
                                        //     items["image"]!)
                                        color: Colors.blueAccent
                                    ),
                                    child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white, ),),
                                  ),
                                ],
                              )
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );

  }
}
