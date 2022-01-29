import 'package:flutter/cupertino.dart';

class ReadMore with ChangeNotifier {
  int currentIndex = -1;
  void changeText(index) {
    if (currentIndex == index) {
      index = -1;
    }
    currentIndex = index;

    notifyListeners();
  }
}
