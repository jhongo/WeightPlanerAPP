

enum NamePlanet{Earth, Mars, Moon, Jupiter}

abstract class FeaturesPlanets{

  double? weightPerson;
  double gravityPlanet;
  double massPerson; 
  final NamePlanet namePlanet;

  FeaturesPlanets({
    this.weightPerson, 
    required this.gravityPlanet,
    required this.massPerson,
    required this.namePlanet});

    Future<void>calculateWeight(double massPerson, double weightMore );
  
}
