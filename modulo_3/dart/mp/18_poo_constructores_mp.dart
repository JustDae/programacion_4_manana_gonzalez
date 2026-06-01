class TerminalTransporte {
  final String nombre;
  final String ubicacion;
  final int capacidadAndenes;
  final bool opera24Horas;

  TerminalTransporte({
    required this.nombre,
    required this.ubicacion,
    required this.capacidadAndenes,
    this.opera24Horas = false,
  });

  TerminalTransporte.local()
      : nombre = 'Terminal Provisional',
        ubicacion = 'Sector Centro',
        capacidadAndenes = 5,
        opera24Horas = false;

  TerminalTransporte.produccion({required this.nombre, required this.ubicacion})
      : capacidadAndenes = 40,
        opera24Horas = true;

  factory TerminalTransporte.desdeUrl(String url) {
    final uri = Uri.parse(url);
    return TerminalTransporte(
      nombre: uri.host,
      ubicacion: uri.host,
      capacidadAndenes: uri.port != 0 ? uri.port : (uri.scheme == 'https' ? 40 : 5),
      opera24Horas: uri.scheme == 'https',
    );
  }

  @override
  String toString() => '${opera24Horas ? "https" : "http"}://$nombre:$capacidadAndenes';
}

void main() {
  final s1 = TerminalTransporte(nombre: 'api.mi-app.com', ubicacion: '10.0.1.5', capacidadAndenes: 3000);
  final s2 = TerminalTransporte.local();
  final s3 = TerminalTransporte.produccion(nombre: 'api.mi-app.com', ubicacion: '10.0.1.5');
  final s4 = TerminalTransporte.desdeUrl('https://pagos.mi-app.com:8443/v1');

  print(s1);
  print(s2);
  print(s3);
  print(s4);
}