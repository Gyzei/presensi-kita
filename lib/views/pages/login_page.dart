import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUN = TextEditingController(text: 'user');
  TextEditingController controllerPW = TextEditingController(text: '123');
  String confirmedUN = 'user';
  String confirmedPW = '123';

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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // HeroWidget(title: widget.title),
                // SizedBox(height: 20.0),
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
                ElevatedButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    minimumSize: Size(double.infinity, 32.0),
                  ),
                  child: Text(
                    widget.title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 64.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedUN == controllerUN.text && confirmedPW == controllerPW.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
