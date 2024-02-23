import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _curPage = 0;

  final _pageController = PageController();

  int get curPage => _curPage;

  set curPage(int value) {
    _curPage = value;
    _pageController.animateToPage(value,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
