import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

void main() async {
  await DotEnv.load(fileName: ".env");
  runApp(HospitalLocator());
}

class HospitalLocator extends StatefulWidget {
  @override
  _HospitalLocatorState createState() => _HospitalLocatorState();
}

class _HospitalLocatorState extends State<HospitalLocator> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
