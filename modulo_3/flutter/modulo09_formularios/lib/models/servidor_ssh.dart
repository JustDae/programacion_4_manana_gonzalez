// lib/models/servidor_ssh.dart
class ServidorSSH {
  final String id;
  final String nombre;
  final String ip;
  final int    puerto;
  final String usuario;
  final String so;
  final bool   ssl;
  bool         favorito;    // mutable — puede cambiar sin recrear el objeto

  ServidorSSH({
    required this.id,
    required this.nombre,
    required this.ip,
    required this.puerto,
    required this.usuario,
    required this.so,
    required this.ssl,
    this.favorito = false,
  });

  
}

class ServiciosWeb {
  final String id1;
  final String nombre;
  final String ip;
  final int    puerto;
  final String usuario;

  bool         favorito;    // mutable — puede cambiar sin recrear el objeto

  ServiciosWeb({
    required this.id1,
    required this.nombre,
    required this.ip,
    required this.puerto,
    required this.usuario,
    this.favorito = false,
  });

  
}