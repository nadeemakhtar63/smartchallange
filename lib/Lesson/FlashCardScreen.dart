import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class FlashCard extends StatefulWidget {
  const FlashCard({super.key});
  @override
  State<FlashCard> createState() => _FlashCardState();
}
class _FlashCardState extends State<FlashCard> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blueGrey,
        backgroundColor:Colors.lightGreenAccent ,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.lightGreenAccent, Colors.tealAccent],
            )),
        child: Column(
          children: [
            Expanded(
              child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blueGrey,
                      ),
                      child: InkWell(
                        onTap: () => _controller.previousPage(),
                        child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider(
                      // options: CarouselOptions(height: 400.0),
                      items: levelofchallange.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.width*0.6,
                                width: MediaQuery.of(context).size.width*0.6,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey
                                ),
                                child: Image.asset(i["image"]!,
                                  // style: TextStyle(fontSize: 16.0),
                                )
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(enlargeCenterPage: true, height: 200),
                      carouselController: _controller,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blueGrey,
                      ),
                      child: InkWell(

                        onTap: () => _controller.nextPage(),
                        child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            InkWell(
              onTap: (){
                FlutterRingtonePlayer.play(fromAsset: "assets/birdsong.wav");
              },
              child: Container(
                  height: 90,
                  width: 90,
                  child: Image(image: AssetImage('assets/unites/speckericon.png'))),
            )
          ],
        ),
      ),
    );
  }
}
