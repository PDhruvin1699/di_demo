// counter_service.dart

import 'dart:ui';

class CounterService {
  int _counter = 0;
  VoidCallback? onCounterChanged; // Callback for notifying changes

  int get counter => _counter;

  void increment() {
    _counter++;
    _notifyListeners();
  }

  void decrement() {
    _counter--;
    _notifyListeners();
  }

  void _notifyListeners() {
    onCounterChanged?.call();
  }
}
