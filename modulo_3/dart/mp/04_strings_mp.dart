void main() {
  final conductor = 'Ana';
  final pasajeros = 28;

  print('Bienvenida, $conductor');

  print('${conductor.toUpperCase()} opera con ${pasajeros + 1} pasajeros mañana');

  final informe = '''
Ruta:      $conductor
Pasajeros: $pasajeros
Activa:    ${pasajeros >= 1 ? 'Sí' : 'No'}
  ''';
  print(informe);

  final ruta = r'C:\Transportes\Linea5';
  print(ruta);

  final mensaje = 'Bienvenido, ' + conductor + '!';

  print('metro'.toUpperCase());
  print('  Bus  '.trim());
  print('Autobús'.contains('bus'));
  print('Tranvía'.replaceAll('v', 'V'));
  print('L1,L2,L3'.split(','));
  print('Estación'.substring(0, 4));
  print('Estación'.startsWith('Est'));
  print('123'.padLeft(5, '0'));
} 