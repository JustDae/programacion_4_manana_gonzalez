import 'dart:io';

void main() {
  int autobuses = 0;
  int pasajeros = 1024;

  while (pasajeros > 0) {
    final subidos = pasajeros > 256 ? 256 : pasajeros;
    autobuses++;
    pasajeros -= subidos;
    print('Autobús $autobuses: $subidos pasajeros (restante: $pasajeros)');
  }

  int intentos = 0;
  bool rutaActiva = false;

  do {
    intentos++;
    print('Revisión de ruta #$intentos...');
    if (intentos == 3) rutaActiva = true;
  } while (!rutaActiva && intentos < 5);

  print(rutaActiva
      ? 'Ruta activa tras $intentos revisiones'
      : 'Ruta no disponible');
}
