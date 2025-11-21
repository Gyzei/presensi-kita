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
          height: 64,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          shadowColor: Color.fromARGB(64, 158, 158, 158),
          indicatorColor: Colors.transparent,
          backgroundColor: isDarkMode == true ? Colors.black : Colors.white,
          surfaceTintColor: isDarkMode == true ? Colors.black : Colors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(
                selectedPage == 0 ? Icons.home_rounded : Icons.home_outlined,
                size: 28.0,
                color: selectedPage == 0 ? KColors.accentColor : null,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                selectedPage == 1
                    ? Icons.article_rounded
                    : Icons.article_outlined,
                size: 28.0,
                color: selectedPage == 1 ? KColors.accentColor : null,
              ),
              label: 'Survey',
            ),
            NavigationDestination(
              icon: Icon(
                selectedPage == 2 ? Icons.person_rounded : Icons.person_outline,
                size: 28.0,
                color: selectedPage == 2 ? KColors.accentColor : null,
              ),
              label: 'Profile',
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
