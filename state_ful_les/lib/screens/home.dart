import 'package:flutter/material.dart';
import 'package:state_ful_les/components/stateless_one.dart';
import 'package:state_ful_les/components/stateful_one.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("States Examples"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatelessOne(name: 'Hazel', age: 17),
          Divider(color: Colors.black),
          StatefulOne(name: 'Chloe', age: 20),
        ],
      ),
    );
  }
}
