import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class GameScrennDesign extends StatefulWidget {
  const GameScrennDesign({super.key});
  @override
  State<GameScrennDesign> createState() => _GameScrennDesignState();
}
class _GameScrennDesignState extends State<GameScrennDesign> {
  final List<List<Map<String, dynamic>>> apiData = [
    // {
    //   "success": true,
    //   "data": [
        [
          {
            "type": "image",
            "id": "Ball",
            "value": "https://barashada.com/student/courses/visual/Ball.png"
          },
          {
            "type": "text",
            "id": "Ball",
            "value": "Ball"
          },
          {
            "type": "text",
            "id": "Alligator",
            "value": "Alligator"
          },
          {
            "type": "text",
            "id": "Balloon",
            "value": "Balloon"
          },
          {
            "type": "image",
            "id": "Balloon",
            "value": "https://barashada.com/student/courses/visual/Balloon.png"
          },
          {
            "type": "image",
            "id": "Alligator",
            "value": "https://barashada.com/student/courses/visual/Alligator.png"
          }
        ],
        [
          {
            "type": "image",
            "id": "Axe",
            "value": "https://barashada.com/student/courses/visual/Axe.png"
          },
          {
            "type": "image",
            "id": "Bed",
            "value": "https://barashada.com/student/courses/visual/Bed.png"
          },
          {
            "type": "text",
            "id": "Axe",
            "value": "Axe"
          },
          {
            "type": "text",
            "id": "Baby",
            "value": "Baby"
          },
          {
            "type": "text",
            "id": "Bed",
            "value": "Bed"
          },
          {
            "type": "image",
            "id": "Baby",
            "value": "https://barashada.com/student/courses/visual/Baby.png"
          }
        ],
        [
          {
            "type": "image",
            "id": "Bee",
            "value": "https://barashada.com/student/courses/visual/Bee.png"
          },
          {
            "type": "image",
            "id": "Baby",
            "value": "https://barashada.com/student/courses/visual/Baby.png"
          },
          {
            "type": "image",
            "id": "Apple",
            "value": "https://barashada.com/student/courses/visual/Apple.png"
          },
          {
            "type": "text",
            "id": "Bee",
            "value": "Bee"
          },
          {
            "type": "text",
            "id": "Baby",
            "value": "Baby"
          },
          {
            "type": "text",
            "id": "Apple",
            "value": "Apple"
          }
        ],
        [
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "image",
            "id": "Airplane",
            "value": "https://barashada.com/student/courses/visual/Airplane.png"
          },
          {
            "type": "text",
            "id": "Airplane",
            "value": "Airplane"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          },
          {
            "type": "image",
            "id": "Bed",
            "value": "https://barashada.com/student/courses/visual/Bed.png"
          },
          {
            "type": "text",
            "id": "Bed",
            "value": "Bed"
          }
        ],
        [
          {
            "type": "image",
            "id": "Ball",
            "value": "https://barashada.com/student/courses/visual/Ball.png"
          },
          {
            "type": "text",
            "id": "Baby",
            "value": "Baby"
          },
          {
            "type": "text",
            "id": "Astronaut",
            "value": "Astronaut"
          },
          {
            "type": "image",
            "id": "Astronaut",
            "value": "https://barashada.com/student/courses/visual/Astronaut.png"
          },
          {
            "type": "text",
            "id": "Ball",
            "value": "Ball"
          },
          {
            "type": "image",
            "id": "Baby",
            "value": "https://barashada.com/student/courses/visual/Baby.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "text",
            "id": "Bear",
            "value": "Bear"
          },
          {
            "type": "text",
            "id": "Ball",
            "value": "Ball"
          },
          {
            "type": "image",
            "id": "Ball",
            "value": "https://barashada.com/student/courses/visual/Ball.png"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          },
          {
            "type": "image",
            "id": "Bear",
            "value": "https://barashada.com/student/courses/visual/Bear.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Ball",
            "value": "Ball"
          },
          {
            "type": "image",
            "id": "Baby",
            "value": "https://barashada.com/student/courses/visual/Baby.png"
          },
          {
            "type": "text",
            "id": "Baby",
            "value": "Baby"
          },
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "image",
            "id": "Ball",
            "value": "https://barashada.com/student/courses/visual/Ball.png"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Balloon",
            "value": "Balloon"
          },
          {
            "type": "text",
            "id": "Ball",
            "value": "Ball"
          },
          {
            "type": "text",
            "id": "Apple",
            "value": "Apple"
          },
          {
            "type": "image",
            "id": "Ball",
            "value": "https://barashada.com/student/courses/visual/Ball.png"
          },
          {
            "type": "image",
            "id": "Balloon",
            "value": "https://barashada.com/student/courses/visual/Balloon.png"
          },
          {
            "type": "image",
            "id": "Apple",
            "value": "https://barashada.com/student/courses/visual/Apple.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Balloon",
            "value": "Balloon"
          },
          {
            "type": "image",
            "id": "Balloon",
            "value": "https://barashada.com/student/courses/visual/Balloon.png"
          },
          {
            "type": "text",
            "id": "Bed",
            "value": "Bed"
          },
          {
            "type": "image",
            "id": "Bed",
            "value": "https://barashada.com/student/courses/visual/Bed.png"
          },
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Balloon",
            "value": "Balloon"
          },
          {
            "type": "text",
            "id": "Apple",
            "value": "Apple"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          },
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "image",
            "id": "Balloon",
            "value": "https://barashada.com/student/courses/visual/Balloon.png"
          },
          {
            "type": "image",
            "id": "Apple",
            "value": "https://barashada.com/student/courses/visual/Apple.png"
          }
        ],
        [
          {
            "type": "text",
            "id": "Apple",
            "value": "Apple"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          },
          {
            "type": "image",
            "id": "Apple",
            "value": "https://barashada.com/student/courses/visual/Apple.png"
          },
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          }
        ],
        [
          {
            "type": "text",
            "id": "Ant",
            "value": "Ant"
          },
          {
            "type": "image",
            "id": "Ant",
            "value": "https://barashada.com/student/courses/visual/Ant.png"
          }
        ]
      // ]
    // }
  ];
  @override
  void initState() {
    super.initState();
    // fetchData();

  }
  int i=0;
 //  Future<void> fetchData() async {
 // Uri uri=Uri.parse('https://barashada.com/api/script/api?action=activity-review');
 //  try{
 //    final response = await http.post(uri,
 //    headers: {
 //      "Accept":"application/json"
 //
 //    },
 //    body:{
 //      "course_id":"20",
 //      "section_id":"126",
 //      "user_id":"74"
 //    }
 //    );
 //    if (response.statusCode == 200) {
 //      final jsonData = json.decode(response.body);
 //      if (jsonData['success'] == true) {
 //        setState(() {
 //          apiData = List<Map<String, dynamic>>.from(jsonData['data']);
 //        });
 //      } else {
 //        // Handle API error if needed
 //        print('API Error: ${jsonData['error']}');
 //      }
 //    } else {
 //      // Handle HTTP error if needed
 //      print('HTTP Error: ${response.statusCode}');
 //    }
 //  }
 //  catch (e) {
 //    print(e);
 //    return null;
 //  }
 //  }
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> itemList=[];
    itemList = apiData[0];
    return  Scaffold(
        body:
    //     ListView.builder(
    //     itemCount: apiData.length,
    //     itemBuilder: (context, index)
    // {

      // return
        InkWell(
        onTap: (){
       setState(() {
         itemList = apiData[i];
         i++;
       });
        },
         child: Card(
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: itemList.map<Widget>((item) {
                if (item['type'] == 'image') {
                  return Column(
                    children: [
                      Image.network(
                        item['value'],
                        width: 100,
                        height: 100,
                      ),
                      Text(item['id']),
                    ],
                  );
                } else if (item['type'] == 'text') {
                  return Text(item['value']);
                }
                return Container(); // Return an empty container for unknown types
              }).toList(),
            ),
          ),
        ),
      // );
      // );
    // }
    )
    );

  }
}
class MyListItem extends StatelessWidget {
  final Map<String, dynamic> item;
  MyListItem({required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(item['image']),
          Text('Audio: ${item['audio']}'),
          Column(
            children: (item['choices'] as List).map<Widget>((choice) {
              return ListTile(
                title: Text(choice[0]),
                subtitle: Text('Weight: ${choice[1]}'),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}