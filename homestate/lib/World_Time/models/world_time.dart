import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the ui
  String time = ''; //the time in that location
  String flag; // url to an assets flag icon
  String url; //location url for api endpoint
  bool isDayTime = false; // true or false if date time or not

  WorldTime({required this.location, required this.flag, required this.url});
  Future<void> getTime() async {
    // final response = await http
    //     .get(Uri.parse('"http://worldtimeapi.org/api/timezone/Africa/Ethiopia"'));
    // Map data = jsonDecode(response.body);
    // print(data);
    // make the request
    try {
      http.Response response = await http
          .get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      // print(data);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(offset);

      // Create date Time Object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set time property
      isDayTime = now.hour> 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      // print(time);
    } catch (e) {
      print('caught error: $e');
      time = 'couldn\'t get the time data';
    }
  }
}
