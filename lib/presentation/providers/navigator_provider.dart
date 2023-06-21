import 'package:flutter/material.dart';
class NavigatorProvider extends ChangeNotifier {

late int initIndex = 0;
PageController controller = PageController();


changePage( int index){
  controller.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.linear);
  initIndex = index;
  notifyListeners();
}

  
}