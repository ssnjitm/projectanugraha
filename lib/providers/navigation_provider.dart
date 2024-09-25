import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void navigateToSignIn() {
    _currentIndex = 1;
    notifyListeners();
  }

  void navigateToSignUp() {
    _currentIndex = 2;
    notifyListeners();
  }
}
