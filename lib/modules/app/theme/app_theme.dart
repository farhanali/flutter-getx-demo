import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primarySwatch: Colors.teal,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
