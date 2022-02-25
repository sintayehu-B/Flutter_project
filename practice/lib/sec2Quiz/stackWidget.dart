import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  List<Map<String, Object>> items =
      List.generate(15, (_) => {"name": "Yeabsira Solomon"});
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              color: Colors.purple,
            ),
            Positioned(
              bottom: -100,
              child: Container(
                width: mq.width,
                height: 200,
                // width: double.infinity,
                // color: Colors.amber,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        width: mq.width * .35,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.blue,
                              ),
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
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  items[index]["name"] as String,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
