import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:smartchallange/Design/ChoiceItem.dart';
class ListShowItem extends StatefulWidget {
  final String audio;
  final List<List<dynamic>> choices;
   ListShowItem({required this.audio, required this.choices});
  @override
  State<ListShowItem> createState() => _ListShowItemState();
}
class _ListShowItemState extends State<ListShowItem> {
  final CarouselController _controller = CarouselController();
  songsing()async{
    // final player = AudioPlayer();                   // Create a player
    // final duration = await player.setUrl(           // Load a URL
    //     'https://foo.com/bar.mp3');                 // Schemes: (https: | file: | asset: )
    // player.play();                                  // Play without waiting for completion
    // await player.play();

  }
  @override
  void initState() {
    songsing();
    // TODO: implement initState
    super.initState();
  }
 // int i=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            FlutterRingtonePlayer.play(fromAsset: "assets/birdsong.wav");
          },
          child: Container(
              height: 90,
              width: 90,
              child: Image(image: AssetImage('assets/unites/speckericon.png'))
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  // i++;
                });
              },
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image(image: NetworkImage(widget.choices[1][0]))),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  // i++;
                });
              },
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image(image: NetworkImage(widget.choices[1][0]))),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  // i++;
                });
              },
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image(image: NetworkImage(widget.choices[2][0]))
              ),
            ),
          ],
        ),
        // Text(widget.)
      ],
    );
    // return CarouselSlider(
    //   // options: CarouselOptions(height: 400.0),
    //   items: choices.map((i) {
    //     return Builder(
    //       builder: (BuildContext context) {
    //         return Container(
    //             height: MediaQuery.of(context).size.width*0.6,
    //             width: MediaQuery.of(context).size.width*0.6,
    //             margin: EdgeInsets.symmetric(horizontal: 5.0),
    //             decoration: BoxDecoration(
    //                 color: Colors.blueGrey
    //             ),
    //             child: Image.network(i[0]!,
    //               // style: TextStyle(fontSize: 16.0),
    //             )
    //         );
    //       },
    //     );
    //   }).toList(),
    //   options: CarouselOptions(enlargeCenterPage: true, height: 200),
    //   carouselController: _controller,
    // );
    // return Card(
    //   elevation: 3.0,
    //   margin: EdgeInsets.all(8.0),
    //   child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       // Image.asset(
    //       //   audio,
    //       //   height: 100.0,
    //       //   width: double.infinity,
    //       //   fit: BoxFit.cover,
    //       // ),
    //       // SizedBox(height: 8.0),
    //       const Text(
    //         'Choices:',
    //         style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    //       ),
    //       Column(
    //         children: choices.map((choice) {
    //           return ChoiceItem(
    //             imageUrl: choice[0],
    //             value: choice[1],
    //           );
    //         }).toList(),
    //       ),
    //      ],
    //    ),
    //  );
   }
}