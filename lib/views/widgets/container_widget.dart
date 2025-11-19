import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title, required this.desc});

  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = isDarkModeNotifier.value;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        color: isDarkMode == true ? Colors.black : Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: KTextStyle.titleTealText),
              Text(desc, style: KTextStyle.descriptionText),
            ],
          ),
        ),
      ),
    );
  }
}
