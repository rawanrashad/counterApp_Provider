import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementByOne() {
    _count += 1;
    notifyListeners();
  }

  void incrementByTwo() {
    _count += 2;
    notifyListeners();
  }

  void decrementByOne() {
    _count -= 1;
    notifyListeners();
  }

  void decrementByTwo() {
    _count -= 2;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
