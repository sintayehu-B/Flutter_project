import 'package:flutter/material.dart';
import 'package:homestate/Quotes/widgets/Quotes.dart';
import 'package:homestate/World_Time/choose_location.dart';
import 'package:homestate/World_Time/home.dart';
import 'package:homestate/World_Time/loading.dart';
// import '/Quotes/widgets/Quotes.dart';
// import '/NinjaID/ninjaId.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: ,
        home: QuoteList(),
        // initialRoute: '/quote',
        // routes: {
        //   '/': (context) => Loading(),
        //   '/home': (context) => Home(),
        //   '/location': (context) => ChooseLocation(),
        //   '/quote': (context) => QuoteList(),
        // },
      ),
    );

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
