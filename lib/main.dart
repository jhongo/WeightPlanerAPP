import 'package:flutter/material.dart';
import 'package:planet_app/config/theme/app_theme.dart';
import 'package:planet_app/presentation/providers/home_provider.dart';
import 'package:planet_app/presentation/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(context) => HomeProvider(),
          ),
        ChangeNotifierProvider(
          create:(context) => MarsProvider(), 
          )
      ],
      child: MaterialApp( 
        debugShowCheckedModeBanner: false,
        title: 'Planet App',
        home: SplasScreen(),
        theme: AppTheme(selectColor: 3).theme(),
      ),
    );
  }
}