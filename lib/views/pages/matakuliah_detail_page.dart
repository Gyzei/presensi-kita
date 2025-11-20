import 'package:flutter/material.dart';
import 'package:presensi_kita/views/pages/expanded_flexible_page.dart';

class MatakuliahDetailPage extends StatefulWidget {
  const MatakuliahDetailPage({super.key, required this.title});

  final String title;

  @override
  State<MatakuliahDetailPage> createState() => _MatakuliahDetailPageState();
}

class _MatakuliahDetailPageState extends State<MatakuliahDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExpandedFlexiblePage();
                    },
                  ),
                );
              },
              child: Text('Show Expanded and whatever'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Test SnackBar'),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Text('Click me'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Title'),
                      content: Text('Lorem ipsum'),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Open dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
