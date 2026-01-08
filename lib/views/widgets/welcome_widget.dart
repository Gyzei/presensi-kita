import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Pagi !!',
                  style: isDarkModeNotifier.value == true
                      ? KTextStyle.dark24w500
                      : KTextStyle.light24w500,
                ),
                Text(
                  'User',
                  style: isDarkModeNotifier.value == true
                      ? KTextStyle.dark24w500
                      : KTextStyle.light24w500,
                ),
                Text(
                  '202XXXXXXXXX',
                  style: isDarkModeNotifier.value == true
                      ? KTextStyle.dark14w500
                      : KTextStyle.light14w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
