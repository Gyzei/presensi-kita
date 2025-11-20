import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/mk_widget.dart';
import 'package:presensi_kita/views/widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeWidget(),
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
