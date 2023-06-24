import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planet_app/domain/entities/nav_options.dart';
import 'package:planet_app/presentation/providers/navigator_provider.dart';
import 'package:provider/provider.dart';

class OptionName extends StatelessWidget {

  final NavOptions itemNav;
  const OptionName({super.key,required this.itemNav});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = context.watch<NavigatorProvider>();
    return AnimatedContainer(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      duration: const Duration(milliseconds: 750),
      height: 40,
      decoration: BoxDecoration(
      color: (itemNav.index == navigationProvider.initIndex) ? Color(0xFF90e0ef).withOpacity(0.4) : Colors.transparent ,
      borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(itemNav.icon,
          color:(itemNav.index == navigationProvider.initIndex) ? Colors.white : Color(0xFF8a95a5),
          size:(itemNav.index == navigationProvider.initIndex) ? 23 : 20,
          ),
          if(itemNav.index == navigationProvider.initIndex)
          const SizedBox(width: 5,),
          if(itemNav.index == navigationProvider.initIndex)
          Text(itemNav.name, style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w800, fontFamily: 'SpaceAge' ),)
        
        ],
      )
    );
  }
}
