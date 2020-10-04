import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/blocs/counter.dart';

class ButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ARDI'S NOTE : declare counter provider
    final Counter counter = Provider.of<Counter>(context);

    return RaisedButton(
      //ARDI'S NOTE : call increment method from counter provider
      onPressed: () => counter.increment(),
      child: Text("Add"),
    );
  }
}
