import 'package:flutter/material.dart';

import 'apibuild.dart/apipart.dart';
import 'design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Homeview(),
      //home: HomePage(),
      home:SongList(),
      //home: PostBuild(),
      //home: ViewWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
