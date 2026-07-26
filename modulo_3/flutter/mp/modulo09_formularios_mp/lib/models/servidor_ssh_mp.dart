// lib/models/servidor_ssh_mp.dart
class BusSSH {
  final String id;
  final String nombre;
  final String ruta;
  final int capacidad;
  final String conductor;
  final String modelo;
  final bool clima;
  bool         favorito;    // mutable — puede cambiar sin recrear el objeto

  BusSSH({
    required this.id,
    required this.nombre,
    required this.ruta,
    required this.capacidad,
    required this.conductor,
    required this.modelo,
    required this.clima,
    this.favorito = false,
  });

  
}

class ServiciosWeb {
  final String id1;
  final String nombre;
  final String ruta;
  final int capacidad;
  final String conductor;

  bool         favorito;    // mutable — puede cambiar sin recrear el objeto

  ServiciosWeb({
    required this.id1,
    required this.nombre,
    required this.ruta,
    required this.capacidad,
    required this.conductor,
    this.favorito = false,
  });

  
}