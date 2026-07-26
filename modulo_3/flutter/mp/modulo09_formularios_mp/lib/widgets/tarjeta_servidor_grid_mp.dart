// lib/widgets/tarjeta_servidor_grid_mp.dart
import 'package:flutter/material.dart';
import '../models/servidor_ssh_mp.dart';

class TarjetaBusGrid extends StatelessWidget {
  final BusSSH  servidor;
  final VoidCallback onFavorito;
  final VoidCallback onEliminar;

  const TarjetaBusGrid({
    super.key,
    required this.bus,
    required this.onFavorito,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context) {
    final cs   = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fila superior: icono + favorito
            Row(children: [
              Icon(
                Icons.directions_bus,
                color: servidor.clima ? cs.primary : cs.outline,
                size: 18,
              ),
              const Spacer(),
              GestureDetector(
                onTap: onFavorito,
                child: Icon(
                  servidor.favorito ? Icons.star : Icons.star_border,
                  color: servidor.favorito ? Colors.amber : cs.outline,
                  size: 18,
                ),
              ),
            ]),
            const SizedBox(height: 6),

            // Nombre e IP
            Text(
              servidor.nombre,
              style: text.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              servidor.ruta,
              style: text.bodySmall?.copyWith(color: cs.onSurfaceVariant),
            ),

            const Spacer(),

            // Fila inferior: SSL + SO + eliminar
            Row(children: [
              if (servidor.clima)
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(Icons.ac_unit, size: 12, color: cs.primary),
                ),
              Expanded(
                child: Text(
                  servidor.modelo,
                  style: text.labelSmall?.copyWith(color: cs.onSurfaceVariant),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: onEliminar,
                child: Icon(Icons.delete_outline, size: 16, color: cs.error),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}