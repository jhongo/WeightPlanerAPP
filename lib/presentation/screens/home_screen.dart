import 'package:flutter/material.dart';
import 'package:planet_app/presentation/providers/home_provider.dart';
import 'package:planet_app/presentation/providers/navigator_provider.dart';
import 'package:planet_app/presentation/screens/calculate_screen.dart';
import 'package:planet_app/presentation/screens/information_screen.dart';
import 'package:planet_app/presentation/screens/more_screen.dart';
import 'package:planet_app/presentation/widgets/shared/nav_options_items.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final widht = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final earth = context.watch<HomeProvider>();
    final mars = context.watch<MarsProvider>();
    final moon = context.watch<MoonProvider>();
    final jupiter = context.watch<JupiterProvider>();

    final navPro = context.watch<NavigatorProvider>();

    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            // decoration: decorationHome(),
            child: Stack(
              children: [
                PageView(
                  controller: navPro.controller,
                  physics: NeverScrollableScrollPhysics(),
                  children:const[
                    CalculateScreen(),
                    InformartionScreen(), 
                    MoreScreen()
                  ],
                ),

                const Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: NavOptionsItems()
                  )
              ],
            ),
            ));
  }

  // BoxDecoration decorationHome() {
  //   return const BoxDecoration(
  //             image: DecorationImage(
  //                 fit: BoxFit.fill,
  //                 image: AssetImage(
  //                   'assets/imgs/back_home.jpg',
  //                 )));
  // }
}
