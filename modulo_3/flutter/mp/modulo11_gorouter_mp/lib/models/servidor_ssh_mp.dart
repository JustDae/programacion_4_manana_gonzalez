class BusSSH {
  final String id;
  final String nombre;
  final String ruta;
  final int capacidad;
  final bool clima;

  const BusSSH({
    required this.id,
    required this.nombre,
    required this.ruta,
    required this.capacidad,
    required this.clima,
  });
}

// Lista simulada — en una app real vendría de un provider
const busesSimulados = [
  BusSSH(id: '1', nombre: 'Bus-01', ruta: 'Ruta 42',   capacidad: 22,   clima: true),
  BusSSH(id: '2', nombre: 'Bus-02',  ruta: 'Ruta 10',   capacidad: 22,   clima: true),
  BusSSH(id: '3', nombre: 'Bus-03', ruta: 'Ruta 8',   capacidad: 2222, clima: false),
];