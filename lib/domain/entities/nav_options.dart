import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavOptions { 

  final String name; 
  final int index;
  final IconData icon;

  NavOptions({
  required this.name, 
  required this.index, 
  required this.icon,});

  
} 

 final navOptions =  <NavOptions>[
  NavOptions(name: 'Calculate', index: 0, icon:FontAwesomeIcons.weightScale),
  NavOptions(name: 'Information', index: 1, icon: FontAwesomeIcons.earthAmericas  ),
  NavOptions(name:'More', index: 2, icon: FontAwesomeIcons.infinity, )
];