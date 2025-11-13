import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(children: [HeroWidget()]),
    );
  }
}
