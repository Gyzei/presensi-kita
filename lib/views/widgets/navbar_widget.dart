import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = isDarkModeNotifier.value;
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          elevation: 1,
          indicatorColor: Colors.transparent,
          backgroundColor: isDarkMode == true ? Colors.black : Colors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_rounded,
                size: 28.0,
                color: selectedPage == 0 ? KColors.accentColor : null,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.article_rounded,
                size: 28.0,
                color: selectedPage == 1 ? KColors.accentColor : null,
              ),

              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_rounded,
                size: 28.0,
                color: selectedPage == 2 ? KColors.accentColor : null,
              ),
              label: '',
            ),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
