import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData{
  static const colorBlack=Color(0xff212126);
  static const colorOrange=Color(0xfff17933);
  static var DarkTheme=ThemeData(
    scaffoldBackgroundColor: colorBlack,
    primaryColor: colorBlack,
appBarTheme: AppBarTheme(
  color: Colors.transparent,
  elevation: 0,
  centerTitle: true,
),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
      color: Colors.white,
  fontSize: 20,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorBlack,
      selectedItemColor: colorOrange,
      unselectedItemColor: Colors.white,
    )
  );
}