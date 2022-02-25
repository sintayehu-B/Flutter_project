import 'package:flutter/material.dart';

class Basics extends StatelessWidget {
  const Basics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Center(
        // // Image
        // // child: Image.asset('assets/sofia.jpg'), // image
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.red.shade400,
        //   size: 40.0,
        // ),
        // Elevation Button
        //     Center(
        //   child: ElevatedButton.icon(
        //     onPressed: () {
        //       print("object");
        //     },
        //     icon: Icon(
        //       Icons.mail,
        //       color: Colors.amber[400],
        //     ),
        //     label: Text("mail me"),
        //   ),
        // ),
        // Icon Button
        //     IconButton(
        //   onPressed: () {
        //     print("farta");
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color: Colors.amberAccent,
        // ),

        // ),
        //   Container(
        // padding: EdgeInsets.all(23),
        // margin: EdgeInsets.all(34),
        // color: Colors.greenAccent,
        // child: Text("farata"),
        // ),
        //     Row(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text("data"),
        //     ElevatedButton(onPressed: () {}, child: Text("Click Me ")),
        //     Container(
        //       color: Colors.amber,
        //       padding: EdgeInsets.all(30.0),
        //       child: Text('data'),
        //     )
        //   ],
        // ),
        //     Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       color: Colors.cyan,
        //       child: Text("one"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(20.0),
        //       color: Colors.amber,
        //       child: Text("two"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(30.0),
        //       color: Colors.blueAccent,
        //       child: Text("three"),
        //     ),
        //   ],
        // ),
        Row(
      children: [
        Expanded(flex: 3, child: Image.asset('assets/sofia.jpg')),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.limeAccent,
            child: Text("farta"),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blueGrey,
            child: Text("farta"),
          ),
        ),
        Expanded(
          // flex: 10,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.redAccent,
            child: Text("farta"),
          ),
        ),
      ],
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
    //     print("farta");
    //   },
    //   child: Text("click"),
    // );
  }
}
