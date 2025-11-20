import 'package:flutter/material.dart';
import 'package:presensi_kita/views/widgets/survey_widget.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(4, (index) {
              return SurveyWidget();
            }),
          ],
        ),
      ),
    );
  }
}
