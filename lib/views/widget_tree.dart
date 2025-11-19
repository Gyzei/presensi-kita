import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';
import 'package:presensi_kita/views/pages/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/navbar_widget.dart';
import 'pages/home_page.dart';
import 'pages/survey_page.dart';
import 'pages/profile_page.dart';

List<Widget> pages = [HomePage(), SurveyPage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          if (selectedPage == 0) {
            return Drawer(child: DrawerHeader(child: Text('Notifications')));
          } else {
            return SizedBox.shrink();
          }
        },
      ),
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            if (selectedPage == 0) {
              return Text('Home');
            }
            if (selectedPage == 1) {
              return Text('Survey');
            }
            if (selectedPage == 2) {
              return Text('Profile');
            } else {
              return Text('Error');
            }
          },
        ),
        // titleTextStyle: TextStyle(fontSize: 14),
        elevation: 1,
        actions: [
          // IconButton(
          //   onPressed: () async {
          //     isDarkModeNotifier.value = !isDarkModeNotifier.value;
          //     final SharedPreferences prefs =
          //         await SharedPreferences.getInstance();
          //     await prefs.setBool(
          //       KConstants.themeModeKey,
          //       isDarkModeNotifier.value,
          //     );
          //   },
          //   icon: ValueListenableBuilder(
          //     valueListenable: isDarkModeNotifier,
          //     builder: (context, isDarkMode, child) {
          //       return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
          //     },
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return SettingsPage(title: 'Settings');
          //         },
          //       ),
          //     );
          //   },
          //   icon: Icon(Icons.settings),
          // ),
          ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              if (selectedPage == 0) {
                return IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          // Builder(
          //   builder: (context) {
          //     return IconButton(
          //       icon: Icon(Icons.notifications),
          //       onPressed: () {
          //         Scaffold.of(context).openEndDrawer();
          //       },
          //     );
          //   },
          // ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
