// lib/providers/metricas_provider_mp.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrica_bus_mp.dart';

class MetricasNotifier extends AsyncNotifier<List<MetricaBus>> {
  // build() puede ser async — es la carga inicial
  @override
  Future<List<MetricaBus>> build() => _fetch();

  Future<List<MetricaBus>> _fetch() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const [
      MetricaBus(bus:'Bus-01', velocidad:45.2, pasajeros:62.1, paradas:230, combustible: 80),
      MetricaBus(bus:'Bus-02',  velocidad:88.1, pasajeros:91.2, paradas:80, combustible: 120),
      MetricaBus(bus:'Bus-03', velocidad:22.4, pasajeros:41.0, paradas:50, combustible: 60),
      MetricaBus(bus:'Bus-07', velocidad:20.0, pasajeros:12.0, paradas:20, combustible: 40),
      MetricaBus(bus:'Bus-08',  velocidad:5.0, pasajeros:9.0, paradas:5, combustible: 20),
    ];
  }

  Future<void> recargar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}

final metricasProvider =
    AsyncNotifierProvider<MetricasNotifier, List<MetricaBus>>(
  MetricasNotifier.new,
);