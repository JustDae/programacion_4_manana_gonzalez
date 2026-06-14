void main() {
  String conductor = 'Ana';

  String? destino = null;
  destino = 'Estación Central';

  String? linea = 'Línea 1';

  print(linea?.length);

  String estadoLinea = linea ?? 'Sin asignar';
  print(estadoLinea);

  String lineaSegura = linea!;

  if (destino != null) {
    print(destino.length);
  }

  late String boleto;
  boleto = 'T12345';
  print(boleto);
}