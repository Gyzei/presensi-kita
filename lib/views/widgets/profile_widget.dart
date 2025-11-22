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
                                color: Color.fromRGBO(108, 139, 8, 1),
                                padding: EdgeInsets.symmetric(
                                  vertical: 2.0,
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  'Level',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Text('202XXXXXXXXX'),
                                Text(' • '),
                                Text('Kelas'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 64, child: Text('Email')),
                            Text(' : '),
                            Expanded(
                              child: Text(
                                'user@example.pnl.ac.id',
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 64, child: Text('Program Studi')),
                            Text(' : '),
                            Expanded(child: Text('N/A', softWrap: true)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 64, child: Text('Jurusan')),
                            Text(' : '),
                            Expanded(child: Text('N/A', softWrap: true)),
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
                    backgroundColor: Colors.white,
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
