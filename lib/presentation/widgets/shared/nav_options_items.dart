import 'package:flutter/material.dart';
import 'package:planet_app/domain/entities/nav_options.dart';
import 'package:planet_app/presentation/providers/navigator_provider.dart';
import 'package:planet_app/presentation/widgets/shared/option_item.dart';
import 'package:provider/provider.dart';


class NavOptionsItems extends StatelessWidget {

  const NavOptionsItems({super.key});

  @override
  Widget build(BuildContext context) {

    final navigationProvider = context.watch<NavigatorProvider>();

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
            ]),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navOptions.length,(index) {
              final itemsNav = navOptions[index];
              return GestureDetector(
                onTap: () => navigationProvider.changePage(index),
                child: OptionName(itemNav: itemsNav)
                );
          },
        
          
          ),
        )
      ),
    );
  }
}



