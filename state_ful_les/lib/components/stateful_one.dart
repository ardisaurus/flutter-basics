import 'package:flutter/material.dart';

class StatefulOne extends StatefulWidget {
  StatefulOne({Key key, this.name, this.age}) : super(key: key);
  final String name;
  final int age;
  @override
  _StatefulOneState createState() => _StatefulOneState(name, age);
}

class _StatefulOneState extends State<StatefulOne> {
  String name;
  int age;
  addAge() {
    setState(() {
      age++;
    });
  }

  _StatefulOneState(this.name, this.age);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('$name is $age years old'),
          RaisedButton(onPressed: addAge, child: Text("Add Age"))
        ],
      ),
    );
  }
}
