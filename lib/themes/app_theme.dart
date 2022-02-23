import 'package:flutter/material.dart';


class AppTheme{

  static const double globalElevation = 0;
  

    static final ThemeData LightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      
      
      elevation: globalElevation
      ),
      scaffoldBackgroundColor: Colors.white,
    
      //appbar
      
    );
    static final DarkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      centerTitle: true,
      elevation: globalElevation),
      scaffoldBackgroundColor: Colors.black54,
      inputDecorationTheme: const InputDecorationTheme(
      focusColor: Colors.green,
      
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
      );
      
}