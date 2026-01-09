import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';
import 'package:presensi_kita/views/pages/login_page.dart';
import 'package:presensi_kita/views/pages/settings_page.dart';
import 'package:presensi_kita/views/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProfileWidget(),
            ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Card(
                  color: isDarkMode == true
                      ? KColors.darkNavigation
                      : KColors.lightNavigation,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(8.0),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SettingsPage();
                                },
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: isDarkModeNotifier.value == true
                                          ? KColors.darkText
                                          : KColors.lightText,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Pengaturan',
                                      style: isDarkModeNotifier.value == true
                                          ? KTextStyle.dark16w500
                                          : KTextStyle.light16w500,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 8),
            ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  color: isDarkMode == true
                      ? KColors.darkRedAccent
                      : KColors.lightRedAccent,
                  child: InkWell(
                    onTap: () {
                      selectedPageNotifier.value = 0;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                color: KColors.darkText,
                                size: 16,
                              ),
                              SizedBox(width: 8.0),
                              Text('Logout', style: KTextStyle.dark16w700),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
