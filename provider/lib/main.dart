import 'package:flutter/material.dart';
import 'package:provider_example/blocs/counter.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ARDI'S NOTE : multiprovider widget declaration
    return MultiProvider(
      providers: [
        //ARDI'S NOTE : add provide class. ex : Counter()
        ChangeNotifierProvider(create: (context) => Counter()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
