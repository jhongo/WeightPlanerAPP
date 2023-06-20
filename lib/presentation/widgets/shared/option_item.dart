import 'package:flutter/material.dart';


class OptionName extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    
    return AnimatedContainer(
      padding: EdgeInsets.all(10),
      duration: Duration(milliseconds: 750),
      // width: 40,
      // height: 40,
      margin:const EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child:const Row(
        children: [
          Icon(Icons.car_crash),
          Text('Home')
        ],
      )
    );
  }
}
