import 'package:flutter/material.dart';
import 'package:planet_app/domain/entities/nav_options.dart';
import 'package:planet_app/presentation/widgets/shared/option_item.dart';


class NavOptionsItems extends StatelessWidget {


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
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navOptions.length,(index) {
              final menuitems = navOptions[index];
              return GestureDetector(
                onTap: () => print('$index'),
                child: OptionName(
                  navOpc: menuitems,
                  )
                
                );
          },
        
          
          ),
        )
      ),
    );
  }
}

class OptionName extends StatelessWidget {

  final NavOptions navOpc;

  const OptionName({super.key,required this.navOpc});
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
      child: Row(
        children: [
          Icon(navOpc.icon),
          Text(navOpc.name)
        ],
      )
    );
  }
}


