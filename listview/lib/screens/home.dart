import 'package:flutter/material.dart';
import 'package:listview/services/user.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [
    User(name: 'Hazel', age: 14),
    User(name: 'Jennifer', age: 15),
    User(name: 'Carlie', age: 18),
    User(name: 'Chloe', age: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(users[index].name),
            ),
          );
        },
      ),
    );
  }
}
