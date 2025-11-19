import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/views/pages/course_page.dart';
import 'package:presensi_kita/views/widgets/container_widget.dart';
import 'package:presensi_kita/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.keyConcepts,
      KValue.cleanUI,
      KValue.fixBugs,
      KValue.basicLayout,
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // HeroWidget(title: 'Home', nextPage: CoursePage()),
            SizedBox(height: 4.0),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                desc: 'Lorem ipsum dolor sit amet',
              );
            }),
          ],
        ),
      ),
    );
  }
}
