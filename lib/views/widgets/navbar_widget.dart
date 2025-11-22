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
          shadowColor: KColors.shadow,
          indicatorColor: Colors.transparent,
          overlayColor: WidgetStateColor.transparent,
          backgroundColor: isDarkMode == true
              ? KColors.darkNavigation
              : KColors.lightNavigation,
          surfaceTintColor: isDarkMode == true
              ? KColors.darkNavigation
              : KColors.lightNavigation,
          destinations: [
            NavigationDestination(
              icon: Icon(
                selectedPage == 0 ? Icons.home_rounded : Icons.home_outlined,
                size: 28.0,
                color: selectedPage == 0 && isDarkModeNotifier.value == true
                    ? KColors.darkOrangeAccent
                    : selectedPage == 0 && isDarkModeNotifier.value == false
                    ? KColors.lightOrangeAccent
                    : null,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                selectedPage == 1
                    ? Icons.article_rounded
                    : Icons.article_outlined,
                size: 28.0,
                color: selectedPage == 1 && isDarkModeNotifier.value == true
                    ? KColors.darkOrangeAccent
                    : selectedPage == 1 && isDarkModeNotifier.value == false
                    ? KColors.lightOrangeAccent
                    : null,
              ),
              label: 'Survey',
            ),
            NavigationDestination(
              icon: Icon(
                selectedPage == 2 ? Icons.person_rounded : Icons.person_outline,
                size: 28.0,
                color: selectedPage == 2 && isDarkModeNotifier.value == true
                    ? KColors.darkOrangeAccent
                    : selectedPage == 2 && isDarkModeNotifier.value == false
                    ? KColors.lightOrangeAccent
                    : null,
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
