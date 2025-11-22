import 'package:flutter/material.dart';

class KColors {
  static Color accentColor = Color.fromRGBO(213, 160, 7, 1);

  static Color lightBackgroundColor = Color.fromRGBO(248, 244, 232, 1);
  static Color darkBackgroundColor = Color.fromRGBO(51, 51, 51, 1);

  static Color lightNavigationColor = Color.fromRGBO(255, 255, 255, 1);
  static Color darkNavigationColor = Color.fromRGBO(74, 74, 74, 1);
}

class KConstants {
  static const String themeModeKey = 'themeModeKey';
}

class KTextStyle {
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleTealText = TextStyle(
    color: Colors.teal,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle descriptionText = TextStyle(fontSize: 14);
}
