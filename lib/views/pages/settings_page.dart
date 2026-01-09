import 'package:flutter/material.dart';
import 'package:presensi_kita/data/constants.dart';
import 'package:presensi_kita/data/notifiers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeNotifier.value == true
          ? KColors.darkBackground
          : KColors.lightBackground,
      appBar: AppBar(
        elevation: 1,
        surfaceTintColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        backgroundColor: isDarkModeNotifier.value == true
            ? KColors.darkNavigation
            : KColors.lightNavigation,
        shadowColor: KColors.shadow,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDarkModeNotifier.value == true
                ? KColors.darkText
                : KColors.lightText,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pengaturan',
          style: isDarkModeNotifier.value == true
              ? KTextStyle.dark20w500
              : KTextStyle.light20w500,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: Text(
                'Mode Gelap',
                style: isDarkModeNotifier.value == true
                    ? KTextStyle.dark16w500
                    : KTextStyle.light16w500,
              ),
              value: isDarkModeNotifier.value,
              onChanged: (bool value) async {
                isDarkModeNotifier.value = value;
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(
                  KConstants.themeModeKey,
                  isDarkModeNotifier.value,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
