import 'package:flutter/material.dart';

class FilaServidor extends StatelessWidget {
  final dynamic servidor; 
  final VoidCallback onFavorito;
  final VoidCallback onEliminar;

  const FilaServidor({
    super.key,
    required this.servidor,
    required this.onFavorito,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final bool tieneSsl = _verificarSsl(servidor);
    final bool esFavorito = servidor.favorito ?? false;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: tieneSsl
            ? cs.primaryContainer
            : cs.surfaceContainerHighest,
        child: Icon(
          Icons.dns,
          color: tieneSsl ? cs.onPrimaryContainer : cs.onSurfaceVariant,
        ),
      ),
      title: Text(
        servidor.nombre,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        '${servidor.usuario}@${servidor.ip}:${servidor.puerto}',
        style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              esFavorito ? Icons.star : Icons.star_border,
              color: esFavorito ? Colors.amber : cs.outline,
            ),
            onPressed:     onFavorito,
            visualDensity: VisualDensity.compact,
            tooltip:       esFavorito ? 'Quitar favorito' : 'Agregar a favoritos',
          ),
          IconButton(
            icon:          Icon(Icons.delete_outline, color: cs.error),
            onPressed:     onEliminar,
            visualDensity: VisualDensity.compact,
            tooltip:       'Eliminar',
          ),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }

  bool _verificarSsl(dynamic objeto) {
    try {
      return objeto.ssl ?? false;
    } catch (_) {
      return false;
    }
  }
}