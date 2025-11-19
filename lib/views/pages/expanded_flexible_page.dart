import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 20.0,
                  color: Colors.teal,
                  child: Text('Expanded'),
                ),
              ),
              Flexible(
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text('Flexible'),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text('Flexible'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 20.0,
                  color: Colors.teal,
                  child: Text('Expanded'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
