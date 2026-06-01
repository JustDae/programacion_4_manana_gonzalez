void main() {
  int    capacidad  = 42;
  double pasajeros = capacidad.toDouble();
  String codigo     = capacidad.toString();

  int    linea1 = int.parse('123');
  double duracion = double.parse('3.14');

  int?    paradaExtra = int.tryParse('abc');
  double? velocidad = double.tryParse('99');

  Object descripcion = 'terminal';
  if (descripcion is String) {
    print(descripcion.length);
  }

  Object obj = 'Autobús';
  String vehiculo = obj as String;

  String? ruta = null;
  int longitud = ruta?.length ?? 0;
  print(longitud);

  print(double.infinity);
  print(double.nan);
  print(double.maxFinite);
}