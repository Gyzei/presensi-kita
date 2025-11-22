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
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return Card(
                    color: isDarkMode == true
                        ? KColors.darkNavigationColor
                        : KColors.lightNavigationColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              'Pengaturan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            leading: Icon(Icons.settings),
                            contentPadding: EdgeInsets.all(0),
                            minVerticalPadding: 0,
                            dense: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SettingsPage(title: 'Settings');
                                  },
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Tentang',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            leading: Icon(Icons.info),
                            contentPadding: EdgeInsets.all(0),
                            minVerticalPadding: 0,
                            dense: true,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: Color.fromRGBO(139, 8, 8, 1),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout_rounded,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
