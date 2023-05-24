import 'package:flutter/material.dart';
import 'package:planet_app/domain/entities/planet.dart';

class HomeProvider extends ChangeNotifier implements FeaturesPlanets {
  @override
  double gravityPlanet = 9.8;
  @override
  double massPerson = 0;
  @override
  double? weightPerson = 0;

  @override
  final NamePlanet namePlanet = NamePlanet.Earth;
  
  @override
  Future<void> calculateWeight(double massPerson,double weightMore) async {
    // if(massPerson) return;
    massPerson = massPerson;
    weightPerson =  massPerson * gravityPlanet;
    notifyListeners();

  }  
}

class MarsProvider extends ChangeNotifier implements FeaturesPlanets {
  @override
  double gravityPlanet = 3.71;

  @override
  double massPerson = 0;

  @override
  double? weightPerson = 0;
 
  @override
  final NamePlanet namePlanet = NamePlanet.Mars;

  @override
  Future<void> calculateWeight(double massPerson, double weightMore ) async{
    massPerson = massPerson;
    weightPerson = (weightMore / 9.81) * gravityPlanet;
    notifyListeners();

  }
  
  
}
class MoonProvider extends ChangeNotifier implements FeaturesPlanets {
  @override
  double gravityPlanet = 1.62;

  @override
  double massPerson = 0;

  @override
  double? weightPerson = 0;
 
  @override
  final NamePlanet namePlanet = NamePlanet.Mars;

  @override
  Future<void> calculateWeight(double massPerson, double weightMore ) async{
    massPerson = massPerson;
    weightPerson = (weightMore / 9.81) * gravityPlanet;
    notifyListeners();

  }
  
  
}
class JupiterProvider extends ChangeNotifier implements FeaturesPlanets {
  @override
  double gravityPlanet = 24.79;

  @override
  double massPerson = 0;

  @override
  double? weightPerson = 0;
 
  @override
  final NamePlanet namePlanet = NamePlanet.Mars;

  @override
  Future<void> calculateWeight(double massPerson, double weightMore ) async{
    massPerson = massPerson;
    weightPerson = (weightMore / 9.81) * gravityPlanet;
    notifyListeners();

  }
  
  
}