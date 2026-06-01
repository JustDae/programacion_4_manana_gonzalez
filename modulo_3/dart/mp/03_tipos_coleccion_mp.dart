void main() {
  List<String> paradas   = ['Central', 'Norte', 'Sur'];
  var          horarios  = [6, 7, 8, 9, 10];

  print(paradas[0]);
  print(paradas.length);
  paradas.add('Este');
  paradas.remove('Norte');

  Map<String, int> capacidad = {
    'Autobús': 40,
    'Tranvía': 120,
    'Metro':   200,
  };

  print(capacidad['Autobús']);
  print(capacidad['Bicicleta']);
  capacidad['Minibús'] = 20;

  Set<String> lineas = {'L1', 'L2', 'L3'};
  lineas.add('L1');
  print(lineas.length);

  var ruta1 = [1, 2, 3];
  var ruta2 = [4, 5, 6];
  var recorrido = [...ruta1, ...ruta2];
  print(recorrido);

  bool incluyeExpress = true;
  var paradasExtra = [
    'Parada A',
    'Parada B',
    if (incluyeExpress) 'Parada Express',
  ];

  var distancias = [for (var i = 1; i <= 5; i++) i * 2];
  print(distancias);
}