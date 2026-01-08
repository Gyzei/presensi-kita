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
              content: Text('Nothing happened :('),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Survey Title',
                        style: isDarkModeNotifier.value == true
                            ? KTextStyle.dark18w700
                            : KTextStyle.light18w700,
                      ),
                      Text(
                        'Subtittle',
                        style: isDarkModeNotifier.value == true
                            ? KTextStyle.dark14w400
                            : KTextStyle.light14w400,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
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
                              'Tanggal dimulai',
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
                              'Tanggal Selesai',
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
                              ? KColors.darkOrangeAccent
                              : KColors.lightOrangeAccent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 4.0,
                            ),
                            child: Text(
                              'Status Survey',
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
