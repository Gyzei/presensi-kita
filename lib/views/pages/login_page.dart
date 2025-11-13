import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20.0),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
