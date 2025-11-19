import 'package:flutter/material.dart';

class KColorScheme {
  static const Map<String, dynamic> backgroundColor = {
    'r': 248,
    'g': 244,
    'b': 232,
    'o': 1.0,
  };
}

class KConstants {
  static const String themeModeKey = 'themeModeKey';
}

class KTextStyle {
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
