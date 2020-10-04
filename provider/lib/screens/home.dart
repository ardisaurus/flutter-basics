import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/blocs/counter.dart';
import 'package:provider_example/widgets/btn_add.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ARDI'S NOTE : declare counter provider
    final Counter counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              //ARDI'S NOTE : call counter value from counter provider
              counter.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ButtonAdd(),
          ],
        ),
      ),
    );
  }
}
