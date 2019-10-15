import 'package:flutter/material.dart';
import 'package:sign_up_challenges/colors.dart';

class ThemeDefinition {
  static final theme = ThemeData(
    primaryColor: swatch1,
    buttonColor: swatch1,
    fontFamily: 'Montserrat',
    textTheme: TextTheme(
        button: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        headline: TextStyle(
            fontSize: 26.0, fontWeight: FontWeight.bold, color: Colors.white),
        title: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
        caption: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white)),
  );
}
