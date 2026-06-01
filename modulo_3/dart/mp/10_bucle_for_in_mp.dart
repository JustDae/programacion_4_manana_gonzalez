void main() {
  final paradas = ['Central', 'Norte', 'Sur', 'Este', 'Oeste'];

  for (final parada in paradas) {
    print(parada);
  }

  paradas.forEach((p) => print(p.toLowerCase()));

  final horarios = {'L1': 6, 'L2': 7, 'L3': 8, 'L4': 9};
  for (final entrada in horarios.entries) {
    print('${entrada.key} → salida ${entrada.value}h');
  }
}