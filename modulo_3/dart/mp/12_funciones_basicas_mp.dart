import 'dart:io';

int pasajerosTransportados(int a, int b) {
  return a + b;
}

int capacidadTotal(int a, int b) => a * b;

void imprimirEstado(String titulo) {
  print('─── $titulo ───');
}

void main() {
  print(pasajerosTransportados(5, 3));
  print(capacidadTotal(4, 6));
  imprimirEstado('Inicio del servicio');
}
String formatearTarifa(double tarifa) => '\$${tarifa.toStringAsFixed(2)}';

formatearTarifaSinTipo(double tarifa) => '\$${tarifa.toStringAsFixed(2)}';

void main2() {
  print(formatearTarifa(12.50));
}
String construirRuta(String terminal, String camino, [int? andenes]) {
  if (andenes != null) {
    return 'https://$terminal:$andenes$camino';
  }
  return 'https://$terminal$camino';
}

String construirRutaV2(String terminal, String camino, [int andenes = 443]) {
  return 'https://$terminal:$andenes$camino';
}

void main3() {
  print(construirRuta('estacion.central', '/salida'));
  print(construirRuta('estacion.central', '/salida', 5));
  print(construirRutaV2('estacion.central', '/plataforma'));
}