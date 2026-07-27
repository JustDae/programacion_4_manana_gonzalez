// lib/models/servidor_ssh_mp.dart
class BusSSH {
  final String id;
  final String nombre;
  final String ruta;
  final int capacidad;
  final bool clima;
  bool         favorito;

  BusSSH({
    required this.id,
    required this.nombre,
    required this.ruta,
    required this.capacidad,
    required this.clima,
    this.favorito = false,
  });
}