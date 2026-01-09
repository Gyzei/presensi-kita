import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return Stack(
          alignment: AlignmentGeometry.topCenter,
          children: [
            Column(
              children: [
                SizedBox(height: 64),
                Card(
                  color: isDarkMode == true
                      ? KColors.darkNavigation
                      : KColors.lightNavigation,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 80),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                color: isDarkModeNotifier.value == true
                                    ? KColors.darkGreen
                                    : KColors.lightGreen,
                                padding: EdgeInsets.symmetric(
                                  vertical: 2.0,
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  'Mahasiswa',
                                  style: KTextStyle.dark12w600,
                                ),
                              ),
                            ),
                            Text(
                              'Egy Alfarezi',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark24w700
                                  : KTextStyle.light24w700,
                            ),
                            Row(
                              children: [
                                Text(
                                  '2023583020006',
                                  style: isDarkModeNotifier.value == true
                                      ? KTextStyle.dark12w400
                                      : KTextStyle.light12w400,
                                ),
                                Text(
                                  ' • ',
                                  style: isDarkModeNotifier.value == true
                                      ? KTextStyle.dark12w400
                                      : KTextStyle.light12w400,
                                ),
                                Text(
                                  '3C',
                                  style: isDarkModeNotifier.value == true
                                      ? KTextStyle.dark12w400
                                      : KTextStyle.light12w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 64,
                              child: Text(
                                'Email',
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                            Text(
                              ' : ',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark14w400
                                  : KTextStyle.light14w400,
                            ),
                            Expanded(
                              child: Text(
                                'egy_alfarezi006@student.pnl.ac.id',
                                softWrap: true,
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 64,
                              child: Text(
                                'Program Studi',
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                            Text(
                              ' : ',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark14w400
                                  : KTextStyle.light14w400,
                            ),
                            Expanded(
                              child: Text(
                                'Teknologi Rekayasa Multimedia',
                                softWrap: true,
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 64,
                              child: Text(
                                'Jurusan',
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                            Text(
                              ' : ',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark14w400
                                  : KTextStyle.light14w400,
                            ),
                            Expanded(
                              child: Text(
                                'Teknologi Informasi dan Komputer',
                                softWrap: true,
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark14w400
                                    : KTextStyle.light14w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDarkMode == true
                      ? KColors.darkNavigation
                      : KColors.lightNavigation,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: isDarkModeNotifier.value == true
                        ? KColors.darkNavigation
                        : KColors.lightNavigation,
                    foregroundImage: AssetImage(
                      'assets/images/background.jpeg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
