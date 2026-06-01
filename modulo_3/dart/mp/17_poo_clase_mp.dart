class UnidadTransporte {
  final String id;
  final String nombre;
  String ruta;
  bool _enServicio = false;

  UnidadTransporte({
    required this.id,
    required this.nombre,
    required this.ruta,
  });

  bool get enServicio => _enServicio;
  String get estado => _enServicio ? 'activo' : 'inactivo';

  set estadoServicio(bool valor) {
    _enServicio = valor;
    _enServicio ? print('$nombre: en servicio') : print('$nombre: fuera de servicio');
  }

  void conectar() {
    _enServicio = true;
    print('$nombre conectado en ruta $ruta');
  }

  void desconectar() {
    _enServicio = false;
    print('$nombre desconectado');
  }

  String resumen() => 'ID: $id | Nombre: $nombre | Ruta: $ruta | Estado: $estado';

  @override
  String toString() => 'UnidadTransporte($nombre, $ruta, $estado)';
}

void main() {
  final autobus = UnidadTransporte(
    id: 'BUS-001',
    nombre: 'unidad-principal',
    ruta: 'Troncal Central',
  );

  autobus.conectar();
  print(autobus.estado);
  print(autobus.resumen());
  print(autobus);

  autobus.estadoServicio = false;
  print(autobus.enServicio);
}