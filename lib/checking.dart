import 'package:flutter/material.dart';

class Textprovider with ChangeNotifier {
  String _text1 = "";
  String _text2 = "";

  String get text1 => _text1;
  String get text2 => _text2;

  String get combinedtext => "$_text1$_text2";

  void updatetext1(String newText) {
    _text1 = newText;
    notifyListeners();
  }

  void updatetext2(String newText) {
    _text2 = newText;
    notifyListeners();
  }
}
