import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color _color;
  ColorProvider(this._color);
  void changeColor(Color col) {
    _color = col;
    notifyListeners();
  }
}
