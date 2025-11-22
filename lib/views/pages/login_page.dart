import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';
import 'package:presensi_kita/views/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
    controllerUN.dispose();
    controllerPW.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = isDarkModeNotifier.value;

    return Scaffold(
      backgroundColor: isDarkMode == true
          ? KColors.darkBackgroundColor
          : KColors.lightBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (context, BoxConstraints constraints) {
                return FractionallySizedBox(
                  widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // HeroWidget(title: widget.title),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Selamat Datang Kembali',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Masuk ke akun Anda',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        controller: controllerUN,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: isDarkMode == true
                              ? Colors.grey[850]
                              : Colors.white,
                          prefixIcon: Icon(Icons.person_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        controller: controllerPW,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: isDarkMode == true
                              ? Colors.grey[850]
                              : Colors.white,
                          prefixIcon: Icon(Icons.lock_rounded),
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
                          onLoginPressed();
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: KColors.accentColor,
                          minimumSize: Size(double.infinity, 24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 64.0),
                    ],
                  ),
                );
              },
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
