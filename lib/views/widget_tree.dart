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
    bool isDarkMode = isDarkModeNotifier.value;
    return Scaffold(
      backgroundColor: isDarkMode == true
          ? KColors.darkBackground
          : KColors.lightBackground,
      endDrawer: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          if (selectedPage == 0) {
            return Drawer(
              backgroundColor: isDarkMode == true
                  ? Colors.grey[850]
                  : Colors.white,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(16, 32, 16, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(color: Colors.amber),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Notifications', style: KTextStyle.light18w700),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Lorem ipsum', style: KTextStyle.light18w500),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
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
              return Text('Home', style: KTextStyle.light20w500);
            }
            if (selectedPage == 1) {
              return Text('Survey', style: KTextStyle.light20w500);
            }
            if (selectedPage == 2) {
              return Text('Profile', style: KTextStyle.light20w500);
            } else {
              return Text('Error', style: KTextStyle.light20w500);
            }
          },
        ),
        elevation: 1,
        surfaceTintColor: isDarkMode == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        backgroundColor: isDarkMode == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        shadowColor: KColors.shadow,
        actions: [
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
