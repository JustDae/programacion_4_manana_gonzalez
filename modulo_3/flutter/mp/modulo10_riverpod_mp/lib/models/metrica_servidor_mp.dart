// lib/models/metrica_servidor_mp.dart
class MetricaBus {
  final String bus;
  final double velocidad;
  final double pasajeros;
  final int paradas;
  final double combustible;

  const MetricaBus({
    required this.bus,
    required this.velocidad,
    required this.pasajeros,
    required this.paradas,
    required this.combustible,
  });
}