import 'package:flutter/material.dart';
import 'package:planet_app/presentation/screens/home_screen.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({Key? key}) : super(key: key);

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  Future<void> _loadSplashScreen() async {
    await Future.delayed(Duration(seconds: 4));

    if (mounted) {
      Navigator.of(context).pushReplacement(
        // PageRouteBuilder(
        //   transitionDuration: Duration(seconds: 2),
        //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //     final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        //     return FadeTransition(
        //       opacity: Tween<double>(begin: 0.8, end: 1.0).animate(curveAnimation),
        //       child: child,
        //       );
        //   },
        //   pageBuilder: (context, animation, secondaryAnimation) {
        //     return HomeScreen();
        //   },
        //   )
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 950),
          pageBuilder:(context, animation, secondaryAnimation) {
            final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.ease);
            return FadeTransition(
              opacity: Tween<double>(begin: 0, end: 1).animate(curveAnimation),
              child:const HomeScreen(),
              );
          },
          
          )
      );
    }
  }

  @override
  void initState() {
    _loadSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/imgs/universe_background.jpg',
            fit: BoxFit.fill,
          ),
        ),
        CircularProgressIndicator(),
      ],
    ));
  }
}
