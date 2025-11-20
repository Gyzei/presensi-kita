import 'package:flutter/material.dart';

class KColors {
  static const Color backgroundColor = Color.fromRGBO(248, 244, 232, 1);
  static const Color accentColor = Color.fromRGBO(213, 160, 7, 1);
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

class KValue {
  static const String basicLayout = 'MK 1';
  static const String cleanUI = 'MK 2';
  static const String fixBugs = 'MK 3';
  static const String keyConcepts = 'MK 4';
}
