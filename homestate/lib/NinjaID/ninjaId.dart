import 'package:flutter/material.dart';

class NinjaId extends StatefulWidget {
  const NinjaId({Key? key}) : super(key: key);

  @override
  _NinjaIdState createState() => _NinjaIdState();
}

class _NinjaIdState extends State<NinjaId> {
  int ninjaLevels = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Rainbow Six Siege"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevels++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sofia.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Zofia",
              style: TextStyle(
                  color: Colors.blue[200],
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "CURRENT RAINBOW SIX SIEGE LEVEL",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$ninjaLevels",
              style: TextStyle(
                  color: Colors.blue[200],
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[200],
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "zofia@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
