void main() {
  final tarifasBase = [29.99, 49.50, 15.00, 99.99];

  final tarifasConIva = tarifasBase.map((t) => t * 1.15);
  print(tarifasConIva.toList());

  final rutasLineas = ['/troncal-central', '/alimentador-norte', '/sur-valles'];
  final urlsMonitoreo = rutasLineas.map((r) => 'https://api.transporte.com$r');
  print(urlsMonitoreo.toList());
  
  final recaudacionesRutas = [1500.0, 2300.0, 980.0, 3100.0, 750.0];

  final totalRecaudado = recaudacionesRutas.reduce((acum, pasaje) => acum + pasaje);
  print('Total: \$${totalRecaudado.toStringAsFixed(2)}');

  final totalFold = recaudacionesRutas.fold(0.0, (acum, pasaje) => acum + pasaje);
  print('Total (fold): \$${totalFold.toStringAsFixed(2)}');

  final maximaRecaudacion = recaudacionesRutas.reduce((a, b) => a > b ? a : b);
  print('Mayor venta: \$$maximaRecaudacion');
}