abstract class RutaTransporte {
  String get nombre;
  double calcularIngresoEstimado();
  double calcularTiempoViaje();

  void describir() {
    print('$nombre — ingreso: ${calcularIngresoEstimado().toStringAsFixed(2)}, '
          'tiempo: ${calcularTiempoViaje().toStringAsFixed(2)} min');
  }
}

class RutaTroncal extends RutaTransporte {
  final double tarifaBase;
  final int pasajerosEstimados;

  RutaTroncal(this.tarifaBase, this.pasajerosEstimados);

  @override String get nombre => 'Troncal ($pasajerosEstimados pas.)';
  @override double calcularIngresoEstimado() => tarifaBase * pasajerosEstimados;
  @override double calcularTiempoViaje() => 45.0;
}

class RutaAlimentador extends RutaTransporte {
  final double tarifaBase;
  final int pasajerosEstimados;

  RutaAlimentador(this.tarifaBase, this.pasajerosEstimados);

  @override String get nombre => 'Alimentador ($pasajerosEstimados pas.)';
  @override double calcularIngresoEstimado() => (tarifaBase * 0.5) * pasajerosEstimados;
  @override double calcularTiempoViaje() => 25.0;
}

void main() {
  final rutas = <RutaTransporte>[RutaTroncal(0.35, 500), RutaAlimentador(0.35, 200)];
  for (final r in rutas) {
    r.describir();
  }
}