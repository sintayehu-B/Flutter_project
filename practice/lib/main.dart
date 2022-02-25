import 'package:flutter/material.dart';
import 'package:practice/Amp_lab/future/future_stream.dart';
import 'package:practice/calender/calender.dart';

import 'package:practice/sec2Quiz/lab.dart';
import 'package:practice/sec2Quiz/stackWidget.dart';
// import 'package:practice/Quiz/quiz.dart';
// import 'package:practice/otherPersepective.dart';
import 'package:practice/todo_list/Screen/todo_list.dart';
// import './providerWidget/widgets/provider.dart';
// import 'stackWidget.dart';
// import 'lab.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEmo APP'),
        centerTitle: true,
      ),
      body: Calender(),
    );
    // body: GridView.builder(
    //   reverse: true,
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 100,
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //       maxCrossAxisExtent: 150, crossAxisSpacing: 10, mainAxisSpacing: 10),
    //   itemBuilder: (context, index) => Container(
    //     color: Colors.amber,
    //     child: Center(
    //       child: Text("$index"),
    //     ),
    //   ),
    // ),
    // );
  }
}
