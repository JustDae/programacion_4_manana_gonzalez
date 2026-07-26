// lib/screens/pantalla_buses_filtro.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/servidor_ssh_mp.dart';

class PantallaBusesFiltro extends StatelessWidget {
  final bool soloSSL;
  const PantallaBusesFiltro({super.key, this.soloSSL = false});

  @override
  Widget build(BuildContext context) {
    final filtrados = soloSSL
        ? busesSimulados.where((s) => s.clima).toList()
        : busesSimulados;

    return Scaffold(
      appBar: AppBar(
        title:   Text('Buses${soloSSL ? ' (Con A/C)' : ''}'),
        actions: [
          // Toggle filtro SSL — cambia la URL con query param
          IconButton(
            icon:    Icon(soloSSL ? Icons.ac_unit : Icons.air),
            tooltip: soloSSL ? 'Ver todas las rutas' : 'Solo con A/C',
            onPressed: () => soloSSL
                ? context.go('/buses')
                : context.go('/buses?soloSSL=true'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount:   filtrados.length,
        itemBuilder: (context, i) {
          final s = filtrados[i];
          return ListTile(
            leading: Icon(Icons.directions_bus, color: s.clima ? Colors.green : Colors.grey),
            title:   Text(s.nombre),
            subtitle: Text(s.ruta),
            onTap: () => context.push(
              '/buses/${s.id}',
              extra: s,   // pasa el objeto completo
            ),
          );
        },
      ),
    );
  }
}