abstract class ElementoTransporte {
  String get nombre;
  double calcularCapacidadTotal();
}

class AutobusArticulado extends ElementoTransporte {
  final double capacidadAsientos;
  AutobusArticulado(this.capacidadAsientos);
  @override String get nombre => 'Autobús Articulado';
  @override double calcularCapacidadTotal() => capacidadAsientos * 2;
}

class Microbus extends ElementoTransporte {
  final double baseAsientos, pasajerosDePie;
  Microbus(this.baseAsientos, this.pasajerosDePie);
  @override String get nombre => 'Microbús';
  @override double calcularCapacidadTotal() => baseAsientos + pasajerosDePie;
}

class Biarticulado extends ElementoTransporte {
  final double capacidadBase;
  Biarticulado(this.capacidadBase);
  @override String get nombre => 'Autobús Biarticulado';
  @override double calcularCapacidadTotal() => capacidadBase * 3;
}

void imprimirCapacidad(ElementoTransporte elemento) {
  print('${elemento.nombre}: ${elemento.calcularCapacidadTotal().toStringAsFixed(2)} pasajeros');
}

void main() {
  final flota = <ElementoTransporte>[
    AutobusArticulado(80),
    Microbus(20, 15),
    Biarticulado(80),
  ];

  for (final e in flota) {
    imprimirCapacidad(e);
  }

  final mayorCapacidad = flota.reduce((a, b) => a.calcularCapacidadTotal() > b.calcularCapacidadTotal() ? a : b);
  print('\nUnidad con mayor capacidad: ${mayorCapacidad.nombre}');
}