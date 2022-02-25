import 'package:flutter/material.dart';

class Lab extends StatelessWidget {
  const Lab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          // width: 100,
          height: 300,
          color: Colors.amber,
        ),
        Positioned(
          width: 600,
          bottom: -100,
          child: Container(
            height: 200,
            // color: Colors.blue,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    // width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12)),
                          height: 300,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                              top: 15,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                            ),
                            decoration: BoxDecoration(
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              '$index',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // color: Colors.red,
                  );
                }),
          ),
        ),
      ],
    );
  }
}
