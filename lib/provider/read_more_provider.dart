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

class AddFavorite with ChangeNotifier {
  int currentIndex = 0;
  void changeText2(index) {
    if (currentIndex == index) {
      index = -1;
    }
    currentIndex = index;

    notifyListeners();
  }
}
