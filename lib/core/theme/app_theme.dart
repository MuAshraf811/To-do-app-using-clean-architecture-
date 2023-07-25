import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true, 
    backgroundColor: Color.fromARGB(255, 106, 9, 2),

  ),
  buttonTheme: const ButtonThemeData(
    buttonColor:  Color.fromARGB(255, 106, 9, 2),

  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      
    ),
  )
);
