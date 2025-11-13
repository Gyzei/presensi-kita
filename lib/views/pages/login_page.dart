import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widget_tree.dart';
import 'package:presensi_kita/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUN = TextEditingController();
  TextEditingController controllerPW = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controllerUN.dispose();
    controllerPW.dispose();
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
              controller: controllerUN,
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controllerPW,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green[800],
                minimumSize: Size(double.infinity, 32.0),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
