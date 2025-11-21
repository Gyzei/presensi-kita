import 'package:flutter/material.dart';
import 'package:presensi_kita/data/notifiers.dart';

class MKFilterWidget extends StatelessWidget {
  const MKFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = isDarkModeNotifier.value;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: isDarkMode == true ? Colors.grey[850] : Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Lorem Ipsum')],
          ),
        ),
      ),
    );
  }
}
