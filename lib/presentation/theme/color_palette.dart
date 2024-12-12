import 'package:flutter/material.dart';

abstract class ColorPalette {
  static Color get primary => const Color.fromARGB(255, 12, 1, 161);
  static Color get secondary => const Color.fromARGB(255, 2, 108, 196);
  static Color get lightBackground => const Color.fromRGBO(245, 245, 245, 1);
  static Color get texts => Colors.black;
  static Color get lightTexts => Colors.white;
  static Color get border => const Color.fromRGBO(224, 224, 224, 1);
}
