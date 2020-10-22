import 'package:flutter/material.dart';
import 'package:validator/screens/myCustomForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: MyCustomForm(),
    );
  }
}
