import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Pagi !!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'User',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  '202XXXXXXXXX',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
