import 'package:flutter/material.dart';
import 'package:homestate/World_Time/choose_location.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    // print(data);

// set background
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color bgColors = data['isDayTime'] ? Colors.blue : Colors.indigo.shade700;
    return Scaffold(
      backgroundColor: bgColors,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('./assets/$bgImage'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    Map result =
                        await Navigator.pushNamed(context, '/location') as Map;
                    // print("======================");
                    // print(result);
                    setState(() {
                      data = {
                        'location': result['location'],
                        'flag': result['flag'],
                        'time': result['time'],
                        'isDayTime': result['isDayTime'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[350],
                  ),
                  label: Text("Edit Location"),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                          letterSpacing: 2, fontSize: 28, color: Colors.white),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 66,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
