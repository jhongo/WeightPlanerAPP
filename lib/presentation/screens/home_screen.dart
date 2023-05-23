import 'package:flutter/material.dart';
import 'package:planet_app/presentation/providers/home_provider.dart';
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

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Planets Weight',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: colors.secondary,
        ),
        body: Container(
            width: widht,
            height: height,
            child: Column(
              children: [
                Container(
                  width: widht,
                  height: height * 0.1,
                  color: colors.secondary,
                  child: Row(
                    children: [
                      const Text('Ingresar tu masa'), 
                      Expanded(
                        child: Container(
                          width: widht,
                          height: height,
                          child:  TextFormField(
                            onFieldSubmitted: (value) {
                              earth.calculateWeight(double.parse(value), 0 );
                              mars.calculateWeight(double.parse(value), earth.weightPerson!);
                              print(value);
                            },
                        ),
                        ),
                      )
                    ],
                  ),
                ),

                Row(
                  children: [
                    Text('${earth.namePlanet.name}'),
                    const SizedBox(width: 20,),
                    Text('${earth.gravityPlanet}'),
                    const SizedBox(width: 20,),
                    Text('${earth.massPerson}'),
                    const SizedBox(width: 20,),
                    Text('${earth.weightPerson}'),
                  ],
                ),
                Row(
                  children: [
                    Text('${mars.namePlanet.name}'),
                    const SizedBox(width: 20,),
                    Text('${mars.gravityPlanet}'),
                    const SizedBox(width: 20,),
                    Text('${mars.massPerson}'),
                    const SizedBox(width: 20,),
                    Text('${mars.weightPerson}'),
                  ],
                ),
              ],
            )));
  }
}
