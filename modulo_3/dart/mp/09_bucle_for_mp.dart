void main() {
  for (int parada = 0; parada < 5; parada++) {
    print('Parada $parada');
  }

  for (int porcentaje = 0; porcentaje <= 100; porcentaje += 25) {
    print('Ocupación: $porcentaje%');
  }

  for (int minutos = 5; minutos >= 1; minutos--) {
    print('Salida en $minutos minutos');
  }
}