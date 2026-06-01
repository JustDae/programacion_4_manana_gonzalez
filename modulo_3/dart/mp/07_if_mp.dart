void main() {
  int pasajeros = 38;

  if (pasajeros > 50) {
    print('Sobrecupo');
  } else if (pasajeros > 20) {
    print('Normal');
  } else {
    print('Bajo');
  }

  String estado = pasajeros > 50 ? 'Sobrecargado' : 'Capacidad adecuada';
  print(estado);

  String linea = 'Línea 1';
  String display = linea.toUpperCase();
  print(display);

  String display2 = linea.toUpperCase();
  print(display2);

  String destino = 'Destino Final';
  print(destino.length);
  print(destino.length);

  int longitud = destino.length;
  print(longitud);
}

