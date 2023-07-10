import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectColor;

  AppTheme({
    required this.selectColor,
  })  : assert(selectColor >= 0, 'Selected color must be greater then 0'),
        assert(selectColor < colorList.length,
            'Selected color must be lees or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
