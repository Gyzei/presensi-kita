import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/views/widgets/hero_widget.dart';
import 'package:presensi_kita/views/widgets/mk_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mklist = [
      KValue.keyConcepts,
      KValue.cleanUI,
      KValue.fixBugs,
      KValue.basicLayout,
    ];
    List<String> mklist2 = [
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Wrap(
                          children: [
                            Text(
                              'Selamat Pagi !!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                children: [
                                  Text(
                                    'Egy',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  '2023583020006',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Card(
                // color: isDarkMode == true ? Colors.black : Colors.white,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Lorem Ipsum')],
                  ),
                ),
              ),
            ),
            ...List.generate(4, (index) {
              return MKWidget();
            }),
            // HeroWidget(title: 'Home', nextPage: CoursePage()),
            // ...List.generate(mklist2.length, (index) {
            //   return ContainerWidget(
            //     title: mklist.elementAt(index),
            //     desc: 'Lorem ipsum dolor sit amet',
            //   );
            // }),
          ],
        ),
      ),
    );
  }
}
