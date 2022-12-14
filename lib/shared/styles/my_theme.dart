import 'package:flutter/material.dart';
import 'package:todo_app/shared/styles/colors.dart';

class MyThemeData {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: colorBlack,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    )
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(),
  );
}
