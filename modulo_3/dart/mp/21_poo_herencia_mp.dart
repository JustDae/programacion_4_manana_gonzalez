class Vehiculo {
  final String numeroUnidad;
  final int capacidadPasajeros;

  Vehiculo(this.numeroUnidad, this.capacidadPasajeros);

  String registrarIngreso() => '...';

  void reportarEstado() {
    print('Unidad $numeroUnidad, capacidad para $capacidadPasajeros pasajeros. Estado: ${registrarIngreso()}');
  }
}

class Autobus extends Vehiculo {
  Autobus(super.numeroUnidad, super.capacidadPasajeros);

  @override
  String registrarIngreso() => 'Abriendo puertas neumáticas';

  void activarRampaAcceso() => print('Unidad $numeroUnidad: Rampa para silla de ruedas activada');
}

class Tranvia extends Vehiculo {
  Tranvia(super.numeroUnidad, super.capacidadPasajeros);

  @override
  String registrarIngreso() => 'Abriendo puertas de andén';

  void acoplarVagon() => print('Unidad $numeroUnidad: Vagón secundario acoplado exitosamente');
}

void main() {
  final autobus = Autobus('A-102', 80);
  final tranvia = Tranvia('T-005', 200);

  autobus.reportarEstado();
  tranvia.reportarEstado();

  autobus.activarRampaAcceso();
  tranvia.acoplarVagon();
}