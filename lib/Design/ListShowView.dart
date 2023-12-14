import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:smartchallange/Design/ListShowItem.dart';

class ListShowView extends StatefulWidget {
  @override
  State<ListShowView> createState() => _ListShowViewState();
}

class _ListShowViewState extends State<ListShowView> {
  final List<Map<String, dynamic>> listshow = [
    {
      "audio": "assets/dogsound.mp3",
      "choice": [
        [
          "https://barashada.com/student/courses/visual/Airplane.png",
          1
        ],
        [
          "https://barashada.com/student/courses/visual/Bee.png",
          0
        ],
        [
          "https://barashada.com/student/courses/visual/Axe.png",
          0
        ]
      ],
    },
    {
      "audio": "assets/dogsound.mp3",
      "choice": [
        [
          "https://barashada.com/student/courses/visual/Airplane.png",
          1
        ],
        [
          "https://barashada.com/student/courses/visual/Bee.png",
          0
        ],
        [
          "https://barashada.com/student/courses/visual/Axe.png",
          0
        ]
      ],
    }
  ];

  final CarouselController _controller = CarouselController();
@override
  void initState() {
  FlutterRingtonePlayer.play(fromAsset: "assets/airplanaudio.mp3");
    // TODO: implement initState
    super.initState();
  }
  bool currectOrNot=false;
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: Text('Practice'),
        centerTitle: true,
      ),
      body: Container(
        decoration:  const BoxDecoration(
        boxShadow: [
          BoxShadow(
            //offset: Offset(0, 4),
            // color: Color(0xC75547B2), //edited
              spreadRadius:0.5,
              blurRadius: 1 //edited
          )
        ],
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        // color:    Colors.black12,
        gradient: LinearGradient(
          colors:
          [
            Color(0xc78a79f5),
            Color(0xffa465b6)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

        child: InkWell(
          onTap: (){
            if(i<listshow.length)
              {
                setState(() {
                  i++;
                });
              }
          },
          child:
          // ListView.builder(
          //   itemCount: i,
          //   itemBuilder: (context, index) {
          //     return
                Card(
                  color:
                    Color(0xc78a79f5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        FlutterRingtonePlayer.play(fromAsset: "assets/airplanaudio.mp3");
                      },
                      child: Container(
                        // height: 120,
                        // width: 120,
                        child:Image.asset("assets/unites/speckericon.png") ,
                      ),
                    ),
                    // Image.asset(listshow[i]["choice"][choiceIndex][1]), // Assuming audio is an image for simplicity
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        listshow[i]["choice"].length,
                            (choiceIndex) {
                          return Column(
                            children: [
                              InkWell(
                                onTap:(){
                                  if(listshow[i]["choice"][choiceIndex][1] == 1)
                                    {
                                      FlutterRingtonePlayer.play(fromAsset: "assets/correct.mp3");
                                      showDialog(
                                        barrierColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              backgroundColor: Colors.transparent,
                                              elevation: 0.0,
                                              content:Image.asset("assets/trueicon.png"),
                                            );
                                          });
                                      // setState(() {
                                      //   currectOrNot=true;
                                      // });
                                    }
                                  else{
                                    FlutterRingtonePlayer.play(fromAsset: "assets/ronganswer.wav");
                                    showDialog(
                                        barrierColor: Colors.transparent,
                                        context: context,
                                        builder: (BuildContext context){
                                          return AlertDialog(
                                            backgroundColor: Colors.transparent,
                                            elevation: 0.0,
                                            content:Image.asset("assets/croseIcon.png"),
                                            title: const Text("Wrong Selection",style: TextStyle(color: Colors.white),),
                                            actions: [
                                              MaterialButton(
                                                color: Colors.white,
                                                  child: Text("Try Again"),
                                                  onPressed: () => Navigator.pop(context))
                                            ],
                                          );
                                        });
                                    // setState(() {
                                    //   currectOrNot=false;
                                    // });
                                  }
                                },
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.deepPurpleAccent,
                                      image: DecorationImage(image: NetworkImage(listshow[i]["choice"][choiceIndex][0]))
                                    ),
                                      height: 100,
                                      width: 100,
                                      child:currectOrNot? Image.asset("assets/trueicon.png"):null
                                  ),
                                ),
                              ),
                            ],
                          );
                          //   ListTile(
                          //   title: Text(
                          //     listshow[i]["choice"][choiceIndex][0],
                          //   ),
                          //   trailing: Icon(
                          //     Icons.check,
                          //     color: listshow[i]["choice"][choiceIndex][1] == 1
                          //         ? Colors.green
                          //         : Colors.red,
                          //   ),
                          // );
                        },
                      ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.98,
                      child: Card(
                        color: Colors.red,
                        elevation: 10,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
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
                  ],
                ),
              )
            // },
          ),
      )
      // ),
   //   ),
    );
  }

}