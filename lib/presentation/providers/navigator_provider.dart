import 'package:flutter/material.dart';
import 'package:planet_app/domain/entities/nav_options.dart';

class NavigatorProvider extends ChangeNotifier {

late int initIndex = 0;
PageController controller = PageController();


changePage( int index){
  print('Provider $index');
  controller.animateToPage(index, duration: Duration(milliseconds: 250), curve: Curves.linear);
  initIndex = index;
  notifyListeners();
}

  
}