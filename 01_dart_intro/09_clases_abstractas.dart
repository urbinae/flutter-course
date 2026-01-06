void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final energyLeft = chargePhone(windPlant, 10);
  print('Energy left wind: $energyLeft');

  final solarPlant = SolarPlant(initialEnergy: 50);
  final energyLeftSolar = chargePhone(solarPlant, 30);
  print('Energy left solar: $energyLeftSolar');

  final hydroPlant = HydroPlant(energyLeft: 80);
  final energyLeftHydro = chargePhone(hydroPlant, 20);
  print('Energy left hydro: $energyLeftHydro');
  
}

double chargePhone(EnergyPlant plant, double amount) {

  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  plant.consumeEnergy(amount);
  return plant.energyLeft;
}
enum PlantType { solar, wind, hydro }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy( double amount);
}

class WindPlant extends EnergyPlant {

  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
  
}

class SolarPlant extends EnergyPlant {

  SolarPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.solar);

  @override
  void consumeEnergy(double amount) {
    energyLeft *= amount;
  }
  
}

class HydroPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.hydro;

  HydroPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
