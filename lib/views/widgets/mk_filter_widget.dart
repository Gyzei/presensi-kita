import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class MKFilterWidget extends StatelessWidget {
  const MKFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum',
                style: isDarkModeNotifier.value == true
                    ? KTextStyle.dark14w600
                    : KTextStyle.light14w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
