import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class SurveyWidget extends StatelessWidget {
  const SurveyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = isDarkModeNotifier.value;
    return Card(
      clipBehavior: Clip.antiAlias,
      color: isDarkMode == true
          ? KColors.darkNavigation
          : KColors.lightNavigation,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Survey sudah selesai'),
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Survey Kepuasan Sarana dan Prasarana Tahun 2025',
                          style: isDarkModeNotifier.value == true
                              ? KTextStyle.dark18w700
                              : KTextStyle.light18w700,
                        ),
                        Text(
                          'Tahun 2025',
                          style: isDarkModeNotifier.value == true
                              ? KTextStyle.dark14w400
                              : KTextStyle.light14w400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              '14/11/2025',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark12w400
                                  : KTextStyle.light12w400,
                            ),
                            Text(
                              ' - ',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark12w400
                                  : KTextStyle.light12w400,
                            ),
                            Text(
                              '30/11/2025',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark12w400
                                  : KTextStyle.light12w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          color: isDarkModeNotifier.value == true
                              ? KColors.darkGreenAccent
                              : KColors.lightGreenAccent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 4.0,
                            ),
                            child: Text(
                              'Selesai',
                              style: KTextStyle.dark16w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
