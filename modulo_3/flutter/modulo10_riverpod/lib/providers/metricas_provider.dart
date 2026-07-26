// lib/providers/metricas_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrica_servidor.dart';

class MetricasNotifier extends AsyncNotifier<List<MetricaServidor>> {
  // build() puede ser async — es la carga inicial
  @override
  Future<List<MetricaServidor>> build() => _fetch();

  Future<List<MetricaServidor>> _fetch() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const [
      MetricaServidor(servidor:'prod-web-01', cpu:45.2, ram:62.1, conexiones:230, ssd: 80),
      MetricaServidor(servidor:'prod-db-01',  cpu:88.1, ram:91.2, conexiones:80, ssd: 120),
      MetricaServidor(servidor:'staging-api', cpu:22.4, ram:41.0, conexiones:50, ssd: 60),
      MetricaServidor(servidor:'dev-nest-api', cpu:20.0, ram:12.0, conexiones:20, ssd: 40),
      MetricaServidor(servidor:'dev-db-api',  cpu:5.0, ram:9.0, conexiones:5, ssd: 20),
    ];
  }

  Future<void> recargar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}

final metricasProvider =
    AsyncNotifierProvider<MetricasNotifier, List<MetricaServidor>>(
  MetricasNotifier.new,
);