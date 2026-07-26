// lib/screens/pantalla_busqueda_mp.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/buses_provider_mp.dart';

class PantallaBusqueda extends ConsumerWidget {
  const PantallaBusqueda({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buses = ref.watch(busesFiltradosProvider);
    final busqueda   = ref.watch(busquedaProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Buscar buses')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: SearchBar(
            hintText: 'Buscar por nombre o ruta...',
            leading:  const Icon(Icons.search),
            trailing: busqueda.isNotEmpty
                ? [IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () =>
                        ref.read(busquedaProvider.notifier).state = '',
                  )]
                : null,
            onChanged: (v) =>
                ref.read(busquedaProvider.notifier).state = v,
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
        Expanded(
          child: buses.isEmpty
              ? const Center(child: Text('Sin resultados'))
              : ListView.builder(
                  itemCount:   buses.length,
                  itemBuilder: (_, i) => ListTile(
                    leading: const Icon(Icons.directions_bus),
                    title:    Text(buses[i].nombre),
                    subtitle: Text(buses[i].ruta),
                  ),
                ),
        ),
      ]),
    );
  }
}