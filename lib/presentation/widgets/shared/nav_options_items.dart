import 'package:flutter/material.dart';


class NavOptionsItems extends StatelessWidget {
  const NavOptionsItems({super.key});

  

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: kToolbarHeight,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1f3e5a),
              Color(0xFF1c253c)
            ]
            ),
          borderRadius: BorderRadius.circular(50)
        ),
        child: ListView.builder(
          itemBuilder:(context, index) {
            
          },) ,
      ),
    );
  }
} 
