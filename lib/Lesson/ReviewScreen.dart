import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:get/get.dart';
import 'package:smartchallange/Dialog/PlaceholderDialg.dart';
class ReviewScreen extends StatefulWidget {
  // const Review({super.key});
  @override
  State<ReviewScreen> createState() => _ReviewState();
}
class _ReviewState extends State<ReviewScreen> {
 String _color="cat";
 String _dog="dog";
 bool _isDropped=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child:
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(

                          // height: MediaQuery.of(context).size.height*0.3,
                          child: Image(image: AssetImage('assets/catdogimage.png'),),
                        ),
                        DragTarget<String>(
                          builder: (BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,) {
                            return DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              padding: EdgeInsets.all(6),
                              color: Colors.black,
                              strokeWidth: 2,
                              dashPattern: [8],
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: Center(
                                    child: Text(
                                      !_isDropped ? 'Drop here' : 'Dropped',
                                      textScaleFactor: 2,
                                    )),
                              ),
                            );
                          },
                          onAccept: (data) {
                            if(data=="cat")
                              {
                                FlutterRingtonePlayer.play(fromAsset: "assets/catsong.mp3");
                              }
                            else{
                              showDialog(
                                context: context,
                                builder: (ctx) => PlaceholderDialog(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.teal,
                                    size: 80.0,
                                  ),
                                  title: 'Save Failed',
                                  message: 'An error occurred when attempt to save the message',
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.of(ctx).pop(),
                                      child: Text('!Got It'),
                                    ),
                                  ],
                                ),
                              );
                            }
                            debugPrint('hi $data');
                            setState(() {
                              Get.snackbar('Output', 'Dropped successfully!');
                              _isDropped = true;
                            });
                          },
                          onWillAccept: (data) {
                            return data == _color;
                          },
                          onLeave: (data) {
                            showDialog(
                              context: context,
                              builder: (ctx) => PlaceholderDialog(
                                icon: Icon(
                                  Icons.add_circle,
                                  color: Colors.teal,
                                  size: 80.0,
                                ),
                                title: 'Save Failed',
                                message: 'An error occurred when attempt to save the message',
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.of(ctx).pop(),
                                    child: Text('!Got It'),
                                  ),
                                ],
                              ),
                            );
                            Get.snackbar('Output', 'Missed');
                          },
                        ),
                      ],
                    )
                    ),
                    Expanded(child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(
                        //   height: MediaQuery
                        //       .of(context)
                        //       .size
                        //       .height * 0.15,
                        // ),
                        LongPressDraggable<String>(
                          // Data is the value this Draggable stores.
                          data: "cat",
                          feedback: Material(
                            child: Container(
                              // height: 170.0,
                              // width: 170.0,
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: const Center(
                                child: Text(
                                  'Cat',
                                  textScaleFactor: 2,
                                ),
                              ),
                            ),
                          ),
                          childWhenDragging: Container(
                            // height: 150.0,
                            // width: 150.0,
                            // color: Colors.grey,
                            child: const Center(
                              child: Text(
                                '',
                                textScaleFactor: 2,
                              ),
                            ),
                          ),
                          child: Container(
                            // height: 150.0,
                            // width: 150.0,
                            // color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Cat',
                                textScaleFactor: 2,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery
                        //       .of(context)
                        //       .size
                        //       .height * 0.15,
                        // ),
                        LongPressDraggable<String>(
                          // Data is the value this Draggable stores.
                          data: "dog",
                          feedback: Material(
                            child: Container(
                              // height: 170.0,
                              // width: 170.0,
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: const Center(
                                child: Text(
                                  'Dog',
                                  textScaleFactor: 2,
                                ),
                              ),
                            ),
                          ),
                          childWhenDragging: Container(
                            // height: 150.0,
                            // width: 150.0,
                            // color: Colors.grey,
                            child: const Center(
                              child: Text(
                                '',
                                textScaleFactor: 2,
                              ),
                            ),
                          ),
                          child: Container(
                            // height: 150.0,
                            // width: 150.0,
                            // color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Dog',
                                textScaleFactor: 2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.4,
                        )
                        // SizedBox(
                        //   height: MediaQuery
                        //       .of(context)
                        //       .size
                        //       .height * 0.15,
                        // ),
                      ],
                    )),
                  ],
                ),
              )),
              // SizedBox(
              //   height: MediaQuery
              //       .of(context)
              //       .size
              //       .height * 0.15,
              // ),
            ],
          ),
        ));
  }
}



// import 'package:flutter/material.dart';
// /// Flutter code sample for [AnimatedPositioned].
// class AnimatedPositionedExample extends StatefulWidget {
//   const AnimatedPositionedExample({super.key});
//   @override
//   State<AnimatedPositionedExample> createState() =>
//       _AnimatedPositionedExampleState();
// }
// class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
//   bool selected = false;
//   int animation_speed = 0;
//   double initial_x = 50;
//   double initial_y = 50;
//   late double x = initial_x;
//   late double y = initial_y;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 200,
//       height: 350,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: <Widget>[
//           AnimatedPositioned(
//             top: y,
//             left: x,
//             duration: Duration(seconds: animation_speed),
//             curve: Curves.fastOutSlowIn,
//             child: GestureDetector(
//               onTap: () {},
//               child: Draggable<int>(
//                 key: const Key('mywidgetkey'),
//                 onDragStarted: () {},
//                 onDragUpdate: (details) => {
//                   setState(() {
//                     animation_speed = 0;
//                     x = x + details.delta.dx;
//                     y = y + details.delta.dy;
//                   })
//                 },
//                 onDraggableCanceled: (velocity, offset) {
//                   setState(() {
//                     animation_speed = 2;
//                     x = initial_x;
//                     y = initial_y;
//                   });
//                 },
//                 onDragEnd: (details) {},
//                 data: 10,
//                 feedback: Container(
//                   color: Colors.deepOrange,
//                   height: 100,
//                   width: 100,
//                   child: const Icon(Icons.directions_run),
//                 ),
//                 childWhenDragging: Container(
//                   height: 100.0,
//                   width: 100.0,
//                   color: Colors.pinkAccent,
//                   child: const Center(
//                     child: Text('Child When Dragging'),
//                   ),
//                 ),
//                 child: Container(
//                   height: 100.0,
//                   width: 100.0,
//                   color: Colors.lightGreenAccent,
//                   child: const Center(
//                     child: Text('Draggable'),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }