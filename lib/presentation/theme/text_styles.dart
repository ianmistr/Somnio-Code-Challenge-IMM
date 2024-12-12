import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/theme/color_palette.dart';

abstract class TextStyles {
  static TextStyle get postTitle => TextStyle(
      color: ColorPalette.texts, fontWeight: FontWeight.w900, fontSize: 22);

  static TextStyle get postContent =>
      TextStyle(color: ColorPalette.texts, fontSize: 18);
  static TextStyle get postBadge =>
      TextStyle(color: ColorPalette.lightTexts, fontSize: 14);
  static TextStyle get readMoreText => TextStyle(
      color: ColorPalette.secondary, fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle get messageLabel => TextStyle(
      color: ColorPalette.texts, fontWeight: FontWeight.bold, fontSize: 18);
}
