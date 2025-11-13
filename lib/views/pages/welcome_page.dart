import 'package:flutter/material.dart';
import 'package:presensi_kita/views/pages/login_page.dart';
import 'package:presensi_kita/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green[800],
                minimumSize: Size(double.infinity, 32.0),
              ),
              child: Text('Get Started'),
            ),
            TextButton(
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
              style: TextButton.styleFrom(
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
