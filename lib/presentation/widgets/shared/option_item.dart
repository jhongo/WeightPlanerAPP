import 'package:flutter/material.dart';
import 'package:planet_app/domain/entities/nav_options.dart';
import 'package:planet_app/presentation/providers/navigator_provider.dart';
import 'package:provider/provider.dart';

class OptionName extends StatelessWidget {

  final NavOptions navOpc;

  const OptionName({super.key,required this.navOpc});
  @override
  Widget build(BuildContext context) {
    final nav = context.watch<NavigatorProvider>();
    return AnimatedContainer(
      
      padding: EdgeInsets.all(10),
      duration: Duration(milliseconds: 750),
      // width: double.infinity,
      // height: 40,
      margin:const EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: (navOpc.index == nav.initIndex) ? Colors.indigo : Colors.white,
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
