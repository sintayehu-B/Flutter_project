import 'package:flutter/material.dart';

class Flied extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        color: Colors.green,
        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
      ),
      Positioned(
        left: 150,
        top: 0,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 90,
          height: 90,
          // color: Colors.red,
        ),
      ),
      Positioned(
        left: 120,
        top: 0,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 150,
          height: 150,
          // color: Colors.red,
        ),
      ),
      Positioned(
        left: 150,
        top: 615,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 90,
          height: 90,
          // color: Colors.red,
        ),
      ),
      Positioned(
        // left: 150,
        top: 350,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 600,
          // height: 0,
          // color: Colors.red,
        ),
      ),
      Positioned(
        left: 100,
        top: 250,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.black, width: 2)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 200,
          height: 200,
          // color: Colors.red,
        ),
      ),

      Positioned(
        left: 120,
        // bottom: -800,
        top: 556,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: 150,
          height: 150,
          // color: Colors.red,
        ),
      ),

      // Container(
      //   width: 200,
      //   height: 200,
      //   color: Colors.amber,
      // ),
    ]);
  }
}
