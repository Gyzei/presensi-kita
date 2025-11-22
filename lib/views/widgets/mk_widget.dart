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
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Nama Dosen',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
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
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          'Kelas',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
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
                        ListTile(
                          minTileHeight: 0,
                          contentPadding: EdgeInsets.all(0),
                          minLeadingWidth: 4,
                          leading: Icon(Icons.schedule_rounded, size: 20),
                          title: Text(
                            'Hari / 00:00 - 00:00',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        ListTile(
                          minTileHeight: 0,
                          contentPadding: EdgeInsets.all(0),
                          minLeadingWidth: 4,
                          leading: Icon(
                            Icons.door_front_door_rounded,
                            size: 20,
                          ),
                          title: Text(
                            'Ruang',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                              'Status Kelas',
                              style: KTextStyle.light12w400,
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
