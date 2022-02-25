import 'package:flutter/material.dart';
import 'package:homestate/World_Time/models/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading...';
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Addis_Abeba',
        flag: 'ethiopian_flag.png',
        url: 'Africa/Addis_Ababa');
    await instance.getTime();
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime
      },
    );
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();

    // print("initState Function run");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SpinKitDualRing(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
