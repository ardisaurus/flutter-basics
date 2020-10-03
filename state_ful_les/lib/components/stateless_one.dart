import 'package:flutter/material.dart';

class StatelessOne extends StatelessWidget {
  StatelessOne({Key key, this.name, this.age}) : super(key: key);

  final String name;

  final int age;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$name is $age years old.'),
    );
  }
}
