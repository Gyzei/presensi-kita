import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class DaftarPertemuanPage extends StatelessWidget {
  const DaftarPertemuanPage({super.key, required this.mataKuliah});

  final String mataKuliah;

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Hadir':
        return isDarkModeNotifier.value == true
            ? KColors.darkGreen
            : KColors.lightGreen;
      case 'Sakit':
        return isDarkModeNotifier.value == true
            ? KColors.darkBlue
            : KColors.lightBlue;
      case 'Izin':
        return isDarkModeNotifier.value == true
            ? KColors.darkYellow
            : KColors.lightYellow;
      case 'Terlambat':
        return isDarkModeNotifier.value == true
            ? KColors.darkOrange
            : KColors.lightOrange;
      case 'Tidak Hadir':
        return isDarkModeNotifier.value == true
            ? KColors.darkRed
            : KColors.lightRed;
      case 'Libur':
        return isDarkModeNotifier.value == true
            ? KColors.darkGrey
            : KColors.lightGrey;
      default:
        return isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> statusList = [
      'Hadir',
      'Sakit',
      'Izin',
      'Terlambat',
      'Tidak Hadir',
      'Libur',
    ];

    return Scaffold(
      backgroundColor: isDarkModeNotifier.value == true
          ? KColors.darkBackground
          : KColors.lightBackground,
      appBar: AppBar(
        elevation: 1,
        surfaceTintColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        backgroundColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        shadowColor: KColors.shadow,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDarkModeNotifier.value == true
                ? KColors.darkText
                : KColors.lightText,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Daftar Pertemuan',
          style: isDarkModeNotifier.value == true
              ? KTextStyle.dark20w500
              : KTextStyle.light20w500,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Section
              Text(
                'Kehadiran Anda:',
                style: isDarkModeNotifier.value == true
                    ? KTextStyle.dark20w400
                    : KTextStyle.light20w400,
              ),
              SizedBox(height: 4),
              Text(
                mataKuliah,
                style: isDarkModeNotifier.value == true
                    ? KTextStyle.dark16w700
                    : KTextStyle.light16w700,
              ),
              SizedBox(height: 16),

              Expanded(
                child: GridView.builder(
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.symmetric(vertical: 4),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    final status = index >= statusList.length
                        ? ''
                        : statusList[index];
                    final statusColor = _getStatusColor(status);
                    final number = (index + 1).toString().padLeft(2, '0');

                    return Card(
                      margin: EdgeInsets.all(0),
                      color: statusColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    number,
                                    style: isDarkModeNotifier.value == true
                                        ? KTextStyle.dark20w700
                                        : KTextStyle.light20w700,
                                  ),
                                  if (status.isNotEmpty) ...[
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        status,
                                        style: isDarkModeNotifier.value == true
                                            ? KTextStyle.dark16w400
                                            : KTextStyle.light16w400,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 16),

              // Legend
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        spacing: 18,
                        runSpacing: 18,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildLegendItem(
                                'Hadir',
                                _getStatusColor('Hadir'),
                              ),
                              SizedBox(height: 8),
                              _buildLegendItem(
                                'Libur',
                                _getStatusColor('Libur'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildLegendItem(
                                'Terlambat',
                                _getStatusColor('Terlambat'),
                              ),
                              SizedBox(height: 8),
                              _buildLegendItem(
                                'Tidak Hadir',
                                _getStatusColor('Tidak Hadir'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildLegendItem('Izin', _getStatusColor('Izin')),
                              SizedBox(height: 8),
                              _buildLegendItem(
                                'Sakit',
                                _getStatusColor('Sakit'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle scan action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkModeNotifier.value == true
                        ? KColors.darkOrangeAccent
                        : KColors.lightOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code_scanner, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'SCAN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(width: 6),
        Text(
          label,
          style: isDarkModeNotifier.value == true
              ? KTextStyle.dark12w400
              : KTextStyle.light12w400,
        ),
      ],
    );
  }
}
