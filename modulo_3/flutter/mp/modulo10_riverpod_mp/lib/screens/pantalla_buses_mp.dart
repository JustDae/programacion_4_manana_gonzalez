// lib/screens/pantalla_buses_mp.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modulo10_riverpod_mp/models/bus_ssh_mp.dart';
import '../providers/buses_provider_mp.dart';

class PantallaBuses extends ConsumerWidget {
  const PantallaBuses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buses = ref.watch(busesProvider);
    final cs         = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           Text('Buses (${buses.length})'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: buses.isEmpty
          ? const Center(child: Text('Sin buses'))
          : ListView.separated(
              itemCount:        buses.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, indent: 72),
              itemBuilder: (context, i) {
                final s = buses[i];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: s.clima
                        ? Colors.green.shade50
                        : Colors.grey.shade100,
                    child: Icon(Icons.directions_bus,
                        color: s.clima ? Colors.green : Colors.grey),
                  ),
                  title:    Text(s.nombre,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text('Ruta: ${s.ruta} | Cap: ${s.capacidad}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          s.favorito ? Icons.star : Icons.star_border,
                          color: s.favorito ? Colors.amber : null,
                        ),
                        onPressed: () => ref
                            .read(busesProvider.notifier)
                            .toggleFavorito(s.id),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete_outline,
                            color: Colors.red),
                        onPressed: () => ref
                            .read(busesProvider.notifier)
                            .eliminar(s.id),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final id = DateTime.now().millisecondsSinceEpoch.toString();
          ref.read(busesProvider.notifier).agregar(
            BusSSH(
              id:     id,
              nombre: 'nuevo-bus-$id',
              ruta:     'Ruta ${buses.length + 1}',
              capacidad: 40,
              clima:    true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}