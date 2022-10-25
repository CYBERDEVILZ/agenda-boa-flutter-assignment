import 'package:flutter/material.dart';

class CountValue extends ChangeNotifier {
  // initial values
  int _countValue1 = 0;
  int _countValue2 = 0;
  int _countValue3 = 0;

  // getters
  int getCountValue(int counter) {
    if (counter == 0) {
      return _countValue1;
    } else if (counter == 1) {
      return _countValue2;
    } else if (counter == 2) {
      return _countValue3;
    } else {
      return 0;
    }
  }

  // setters
  void incrementCountValue(int counter) {
    if (counter == 0) {
      _countValue1++;
    } else if (counter == 1) {
      _countValue2++;
    } else if (counter == 2) {
      _countValue3++;
    }
    notifyListeners(); // notifying listeners of updates
  }
}
