import 'dart:convert';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:http/http.dart' as http;

class Song {
  final String createdAt;
  final String avatar;
  final String name;
  final int age;

  Song({
    required this.createdAt,
    required this.avatar,
    required this.name,
    required this.age,
  });

  factory Song.formJson(Map<String, dynamic> json) {
    return Song(
      createdAt: json["createdAt"],
      name: json["name"],
      age: json["age"],
      avatar: json["avatar"],
    );
  }
}

class SongList extends StatefulWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  late Future<List<Song>> futureSongs;
  late List<Song>? songList;

  Future<List<Song>> fechSong() async {
    final response = await http.get(
        Uri.parse("https://629dcbabc6ef9335c0a653dd.mockapi.io/api/v1/users"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return List<Song>.from(data.map((val) => Song.formJson(val)));
      // futureSongs = songList;
      // return songList;
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    // fechSong();
    futureSongs = fechSong();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffA1AEF0),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 30, 6.0, 10.0),
          child: Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                      //height: 16.0,
                      ),
                  headerwidget(),
                  FutureBuilder<List<Song>>(
                      future: futureSongs,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          songList = snapshot.data;

                          return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return cardwidget(
                                    index: index,
                                    imageUrl: songList![index].avatar,
                                    name: songList![index].name,
                                    age: "${songList![index].age} years old ");
                              });
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }

                        // By default, show a loading spinner.
                        return const Center(
                            heightFactor: 15.0,
                            child: CircularProgressIndicator());
                        //}
                      }
                      //           else if(snapshot.hasError){
                      // return Text('${snapshot.error}')
                      //             }
                      ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget headerwidget() {
  return Container(
    margin: const EdgeInsets.only(top: 8, bottom: 15.0),
    decoration: BoxDecoration(
      color: const Color(0xff8092EF),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff586AD7),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                "assets/image/msg.svg",
                color: Colors.white,
                height: 10,
                width: 10,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  " Team Conversation  ",
                  style: TextStyle(
                      fontFamily:
                          // 'assets/fonts/Red_Hat_Display/RedHatDisplay-Italic-VariableFont_wght.ttf',
                          'Schyler',
                      fontSize: 16,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 25.0,
                  color: Colors.white,
                ),
              ],
            ),
            const Text(
              "20 Total Users",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
        SvgPicture.asset(
          "assets/image/filter.svg",
          color: Colors.white,
          height: 24.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/image/arrowline.svg",
          color: Colors.white,
          height: 16.0,
        ),
      ],
    ),
  );
}

Widget cardwidget(
    {required String imageUrl,
    required String name,
    required String age,
    required int index}) {
  return Column(
    children: [
      Row(
        children: [
          Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                  ))),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (index == 0 || index == 4)
                      SvgPicture.asset("assets/image/pin.svg"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(name),
                  ],
                ),
                Text(
                  age,
                ),
              ],
            ),
          )
        ],
      ),
      const SizedBox(
        height: 8.0,
      ),
    ],
  );
}
