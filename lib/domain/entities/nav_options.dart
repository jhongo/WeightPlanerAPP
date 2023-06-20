import 'package:flutter/material.dart';

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
  NavOptions(name: 'Calculate', index: 1, icon:Icons.calculate,),
  NavOptions(name: 'Information', index: 2, icon: Icons.info,  ),
  NavOptions(name:'More', index: 3, icon: Icons.more, )
];