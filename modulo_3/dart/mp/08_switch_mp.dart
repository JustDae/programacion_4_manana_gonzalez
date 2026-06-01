void main() {
  String codigoRuta = '404';

  switch (codigoRuta) {
    case '200':
      print('En servicio');
    case '201':
      print('Salida programada');
    case '400':
      print('Cancelado');
    case '401':
      print('Acceso denegado');
    case '404':
      print('Ruta no encontrada');
    case '500':
      print('Incidencia técnica');
    default:
      print('Código de ruta desconocido');
  }
  String codigoVia = '404';

  String descripcion = switch (codigoVia) {
    '200' => 'En servicio — llegada a tiempo',
    '201' => 'Salida — en camino',
    '204' => 'Sin parada programada',
    '400' => 'Cancelado — no operativo',
    '401' => 'Restringido — acceso denegado',
    '403' => 'Cerrado — sin permiso',
    '404' => 'Ruta no existe',
    '500' => 'Avería en vehículo',
    '503' => 'Servicio no disponible',
    _     => 'Código de ruta desconocido',
  };
  print(descripcion);

  int codigoNumerico = 404;

  String categoria = switch (codigoNumerico) {
    200 || 201 || 204       => 'Servicio operativo',
    301 || 302 || 307       => 'Desvío en ruta',
    400 || 401 || 403 || 404 => 'Incidencia del servicio',
    500 || 502 || 503       => 'Fallo de infraestructura',
    _                       => 'Estado desconocido',
  };

  print(categoria);

  double ocupacion = 39.2;

  String alerta = switch (ocupacion) {
    double t when t >= 90.0 => '🚨 CRÍTICO — sobrecupo extremo',
    double t when t >= 75.0 => '🔴 Alta ocupación — buscar alternativa',
    double t when t >= 50.0 => '🟡 Ocupación media — espacio limitado',
    double t when t >= 25.0 => '🟢 Ocupación baja',
    _                       => '🔵 Muy poco ocupada',
  };

  print(alerta);
}