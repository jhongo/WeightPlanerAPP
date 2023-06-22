import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
   
  const CalculateScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFF210535),
      body: Stack(
        children: [
          Image.asset('assets/imgs/astronaut-in-space.png')
        ],
      )
    );
  }
}

// HEX CODES: 
// #210535
// #6768ab
// #7b337d
// #c874b2
// #f5d5e0