import 'package:flutter/material.dart';

class AppText {
  static Text titulo(
    String texto, {
    double fontSize = 24,
    TextStyle? style,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return Text(
      texto,
      style:
          style ??
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
