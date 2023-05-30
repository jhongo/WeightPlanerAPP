import 'package:flutter/material.dart';
import 'package:planet_app/presentation/providers/home_provider.dart';
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

    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: decorationHome(),
            child: Stack(
              children: [
                PageView(
                  children: [],
                ),

                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: NavOptionsItems()
                  )
              ],
            ),
            ));
  }

  BoxDecoration decorationHome() {
    return const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/imgs/back_home.jpg',
                  )));
  }
}
