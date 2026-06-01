void configurarServicio({
  required String terminal,
  required int    andenes,
  bool   nocturno   = true,
  int    duracionMin = 30,
}) {
  final horario = nocturno ? 'nocturno' : 'diurno';
  print('Servicio en $terminal:$andenes - $horario (duración: ${duracionMin}m)');
}

void main() {
  configurarServicio(
    terminal:    'Central',
    andenes:     5,
    nocturno:    false,
    duracionMin: 60,
  );

  configurarServicio(
    terminal: 'Estación Norte',
    andenes:  3,
  );
}