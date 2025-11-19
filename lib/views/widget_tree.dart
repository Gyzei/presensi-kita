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
      endDrawer: Drawer(),
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            Widget? appBarTitle;
            if (selectedPage == 0) {
              appBarTitle = Text('Home');
            }
            if (selectedPage == 1) {
              appBarTitle = Text('Survey');
            }
            if (selectedPage == 2) {
              appBarTitle = Text('Profile');
            }
            return appBarTitle!;
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
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
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
