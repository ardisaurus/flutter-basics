import 'package:flutter/material.dart';
import 'package:consume_api/screens/MyHomePage.dart';
import 'package:consume_api/screens/AddPost.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Fetch Data Example'),
      routes: {
        '/home': (context) => MyHomePage(
              title: 'Fetch Data Example',
            ),
        '/addPost': (context) => AddPost(),
      },
    );
  }
}
