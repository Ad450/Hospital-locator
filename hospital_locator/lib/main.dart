import 'package:flutter/material.dart';

void main() {
  runApp(HospitalLocator());
}

class HospitalLocator extends StatelessWidget {
  final String _title = "Hospital locator";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}
