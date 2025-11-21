import 'package:flutter/material.dart';
import 'package:presensi_kita/data/notifiers.dart';

bool isDarkMode = isDarkModeNotifier.value;

class KColors {
  static Color backgroundColor = isDarkMode == true
      ? Color.fromRGBO(51, 51, 51, 1)
      : Color.fromRGBO(248, 244, 232, 1);

  static Color navigationColor = isDarkMode == true
      ? Color.fromRGBO(74, 74, 74, 1)
      : Color.fromRGBO(255, 255, 255, 1);

  static Color accentColor = Color.fromRGBO(213, 160, 7, 1);
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
