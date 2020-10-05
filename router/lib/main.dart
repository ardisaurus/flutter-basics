import 'package:flutter/material.dart';
import 'package:router/screens/chat.dart';
import 'package:router/screens/editProfile.dart';
import 'package:router/screens/home.dart';
import 'package:router/screens/login.dart';
import 'package:router/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Router Example',
      ),
      //ARDI'S NOTE : Define all available routes
      routes: {
        '/home': (context) => MyHomePage(
              title: 'Router Example',
            ),
        '/profile': (context) => Profile(),
        '/editProfile': (context) => EditProfile(),
        '/chat': (context) => Chat(),
        '/login': (context) => Login(),
      },
    );
  }
}
