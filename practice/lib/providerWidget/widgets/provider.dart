import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../star_provider.dart';

class ColorsProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => ColorProvider(Colors.black),
      child: Column(
        children: [
          Container(
            color: Colors.red,
            // color: ColorsProvider(),
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildColorButtons(Colors.green, 'Green'),
              _buildColorButtons(Colors.red, 'red'),
              _buildColorButtons(Colors.yellow, 'yellow'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColorButtons(Color color, String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
