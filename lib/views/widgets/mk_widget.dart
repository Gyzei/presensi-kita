import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';
import 'package:presensi_kita/views/pages/daftar_pertemuan_page.dart';

class MKWidget extends StatelessWidget {
  const MKWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: KColors.shadow,
      clipBehavior: Clip.antiAlias,
      color: isDarkModeNotifier.value == true
          ? KColors.darkNavigation
          : KColors.lightNavigation,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DaftarPertemuanPage(title: 'Daftar Pertemuan');
              },
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matakuliah',
                          style: isDarkModeNotifier.value == true
                              ? KTextStyle.dark18w700
                              : KTextStyle.light18w700,
                        ),
                        Text(
                          'Nama',
                          style: isDarkModeNotifier.value == true
                              ? KTextStyle.dark14w400
                              : KTextStyle.light14w400,
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: isDarkModeNotifier.value == true
                          ? KColors.darkOrangeAccent
                          : KColors.lightOrangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text('Kelas', style: KTextStyle.dark18w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              size: 20,
                              color: isDarkModeNotifier.value == true
                                  ? KColors.darkText
                                  : KColors.lightText,
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Hari / 00:00 - 00:00',
                                style: isDarkModeNotifier.value == true
                                    ? KTextStyle.dark12w400
                                    : KTextStyle.light12w400,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.door_front_door_rounded,
                                size: 20,
                                color: isDarkModeNotifier.value == true
                                    ? KColors.darkText
                                    : KColors.lightText,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Ruang',
                                  style: isDarkModeNotifier.value == true
                                      ? KTextStyle.dark12w400
                                      : KTextStyle.light12w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        child: Wrap(
                          children: [
                            Text('Status Kelas', style: KTextStyle.dark16w500),
                          ],
                        ),
                      ),
                    ),
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
