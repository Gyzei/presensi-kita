import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

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
      backgroundColor: isDarkModeNotifier.value == true
          ? KColors.darkBackground
          : KColors.lightBackground,
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return Text(
              selectedPage == 0
                  ? 'Home'
                  : selectedPage == 1
                  ? 'Survey'
                  : selectedPage == 2
                  ? 'Profile'
                  : 'Error',
              style: isDarkModeNotifier.value == true
                  ? KTextStyle.dark20w500
                  : KTextStyle.light20w500,
            );
          },
        ),
        elevation: 1,
        surfaceTintColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        backgroundColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        shadowColor: KColors.shadow,
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
