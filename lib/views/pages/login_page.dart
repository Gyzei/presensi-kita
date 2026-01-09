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
  // TextEditingController controllerUN = TextEditingController(
  //   text: '2023583020006',
  // );
  // TextEditingController controllerPW = TextEditingController(text: '123');

  TextEditingController controllerUN = TextEditingController(text: '');
  TextEditingController controllerPW = TextEditingController(text: '');

  String confirmedUN = '2023583020006';
  String confirmedPW = '123';
  bool hidePassword = true;

  @override
  void dispose() {
    controllerUN.dispose();
    controllerPW.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeNotifier.value == true
          ? KColors.darkBackground
          : KColors.lightBackground,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
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
                              textAlign: TextAlign.center,
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark24w400
                                  : KTextStyle.light24w400,
                            ),
                            Text(
                              'Masuk ke akun Anda',
                              style: isDarkModeNotifier.value == true
                                  ? KTextStyle.dark12w400
                                  : KTextStyle.light12w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        controller: controllerUN,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: isDarkModeNotifier.value == true
                              ? KTextStyle.dark14w400
                              : KTextStyle.light14w400,
                          filled: true,
                          counterStyle: isDarkModeNotifier.value == true
                              ? KTextStyle.dark14w400
                              : KTextStyle.light14w400,
                          fillColor: isDarkModeNotifier.value == true
                              ? KColors.darkNavigation
                              : KColors.lightNavigation,
                          prefixIcon: Icon(Icons.person_rounded, size: 20),
                          prefixIconColor: isDarkModeNotifier.value == true
                              ? KColors.darkText
                              : KColors.lightText,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(
                              color: isDarkModeNotifier.value == true
                                  ? KColors.darkOrangeAccent
                                  : KColors.lightOrangeAccent,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        controller: controllerPW,
                        obscureText: hidePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: isDarkModeNotifier.value == true
                              ? KTextStyle.dark14w400
                              : KTextStyle.light14w400,
                          filled: true,
                          fillColor: isDarkModeNotifier.value == true
                              ? KColors.darkNavigation
                              : KColors.lightNavigation,
                          prefixIcon: Icon(Icons.lock_rounded, size: 20),
                          prefixIconColor: isDarkModeNotifier.value == true
                              ? KColors.darkText
                              : KColors.lightText,
                          suffixIcon: IconButton(
                            icon: Icon(
                              hidePassword == true
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_rounded,
                              color: isDarkModeNotifier.value == true
                                  ? KColors.darkText
                                  : KColors.lightText,
                              size: 20,
                            ),
                            onPressed: () {
                              hidePassword = !hidePassword;
                              setState(() {});
                            },
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(
                              color: isDarkModeNotifier.value == true
                                  ? KColors.darkOrangeAccent
                                  : KColors.lightOrangeAccent,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 32.0),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        color: isDarkModeNotifier.value == true
                            ? KColors.darkOrangeAccent
                            : KColors.lightOrangeAccent,
                        child: InkWell(
                          onTap: () {
                            onLoginPressed();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Login',
                                  style: KTextStyle.dark24w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: 64.0),
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
