import 'package:flutter/material.dart';
import 'package:homestate/World_Time/models/world_time.dart';

class ChooseLocation extends StatelessWidget{
  final List<WorldTime> locations = [
    WorldTime(location: "Nairobi", flag: 'Nairobi.png', url: 'Africa/Nairobi'),
    WorldTime(
        location: 'Addis_Abeba',
        flag: 'ethiopain_flag.png',
        url: 'Africa/Addis_Ababa'),
    WorldTime(location: "Denver", flag: 'American.png', url: 'America/Denver'),
    WorldTime(location: "Cairo", flag: 'Cairo.png', url: 'Africa/Cairo'),
    WorldTime(
        location: "Chicago", flag: 'American.png', url: 'America/Chicago'),
    WorldTime(
        location: "New_York", flag: 'American.png', url: 'America/New_York'),
  ];

  void updateTime(index, context) async {
    WorldTime updateLocation = locations[index];
    await updateLocation.getTime();
    // navigate to the home screen
    Navigator.of(context).pop(
      {
        'location': updateLocation.location,
        'flag': updateLocation.flag,
        'time': updateLocation.time,
        'isDayTime': updateLocation.isDayTime
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // print("builder Function run");
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4),
              child: Card(
                child: ListTile(
                  onTap: () {
                    // print(locations[index].location);
                    updateTime(index, context);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('./assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
