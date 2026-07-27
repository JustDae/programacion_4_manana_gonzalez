// lib/screens/pantalla_detalle_mp.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/bus_ssh_mp.dart';

class PantallaDetalle extends StatelessWidget {
  final String      id;
  final BusSSH? bus; // puede venir por extras

  const PantallaDetalle({super.key, required this.id, this.bus});

  @override
  Widget build(BuildContext context) {
    // Si no viene por extras, buscar en la lista simulada
    final srv = bus ??
        busesSimulados.where((s) => s.id == id).firstOrNull;

    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           Text('Detalle: ${srv?.nombre ?? id}'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: srv == null
          ? Center(child: Text('Bus $id no encontrado'))
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Fila('ID',       srv.id),
                  _Fila('Nombre',   srv.nombre),
                  _Fila('Ruta',     srv.ruta),
                  _Fila('Capacidad', srv.capacidad.toString()),
                  _Fila('Aire Acondicionado', srv.clima ? 'Activo' : 'Inactivo'),
                  const SizedBox(height: 24),
                  Row(children: [
                    OutlinedButton.icon(
                      onPressed: () => context.pop(),
                      icon:  const Icon(Icons.arrow_back),
                      label: const Text('Volver'),
                    ),
                    const SizedBox(width: 12),
                    FilledButton.icon(
                      onPressed: () => context.push('/buses/${srv.id}/logs'),
                      icon:  const Icon(Icons.list_alt),
                      label: const Text('Ver ruta'),
                    ),
                  ]),
                ],
              ),
            ),
    );
  }
}

class _Fila extends StatelessWidget {
  final String label;
  final String valor;
  const _Fila(this.label, this.valor);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(children: [
        SizedBox(
          width: 70,
          child: Text(label,
              style: TextStyle(color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w600, fontSize: 12)),
        ),
        Text(valor, style: const TextStyle(fontSize: 15)),
      ]),
    );
  }
}