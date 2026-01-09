import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/mk_widget.dart';
import 'package:presensi_kita/views/widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mkList = [
      'Praktik Pasca Produksi Animasi',
      'Dasar-dasar Jaringan',
      'Pengembangan Multimedia Seluler',
      'Praktik Produksi Podcast',
      'Praktik Multimedia Digital dan Interaktif',
      'Tata Kelola IT',
      'Paradigma Sistem di Bidang IT',
      'Gamifikasi',
      'Proyek Inovasi Produk',
    ];
    final List<String> dosenList = [
      'Umri Erdiansyah, S.Kom., M.Kom.',
      'Muhammad Nasir, ST, MT',
      'Safriadi, S.T., M.Kom.',
      'Aswandi, S.Kom., M.Kom.',
      'Riwanul Nasron, S.T., M.T',
      'Ilham Safar, S.ST., M.Kom.',
      'Novira Dwina, SST, MT',
      'Mursyidah, ST., MT',
      'Aswandi, S.Kom., M.Kom.',
    ];
    final List<String> hariList = [
      'Senin',
      'Senin',
      'Selasa',
      'Rabu',
      'Rabu',
      'Kamis',
      'Kamis',
      'Kamis',
      'Jumat',
    ];
    final List<String> jadwalList = [
      '07:30 - 12:00',
      '13:30 - 17:10',
      '13:30 - 17:10',
      '09:10 - 12:00',
      '13:30 - 18:00',
      '07:30 - 09:10',
      '09:10 - 12:50',
      '13:30 - 17:10',
      '07:30 - 12:00',
    ];
    final List<String> ruangList = [
      '109',
      '206',
      '205',
      '201',
      '203',
      '310',
      '310',
      '205',
      '204',
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            WelcomeWidget(),
            SizedBox(height: 12),
            ...List.generate(mkList.length, (index) {
              return MKWidget(
                mataKuliah: mkList.elementAt(index),
                namaDosen: dosenList.elementAt(index),
                hariMK: hariList.elementAt(index),
                jadwalMK: jadwalList.elementAt(index),
                ruangMK: ruangList.elementAt(index),
              );
            }),
          ],
        ),
      ),
    );
  }
}
