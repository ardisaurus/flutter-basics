import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  increment() {
    counter++;
  }
}
