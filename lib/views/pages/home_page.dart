import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // HeroWidget(title: 'Login'),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              desc: 'Lorem ipsum dolor sit amet',
            ),
          ],
        ),
      ),
    );
  }
}
