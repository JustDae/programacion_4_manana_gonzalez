import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import 'vehiculo_mp.dart';
import 'vehiculo_dto_mp.dart';

class PantallaPaso3 extends StatelessWidget {
  const PantallaPaso3({super.key});

  Future<List<Vehiculo>> _fetchVehiculos() async {
    final res = await http.get(
      Uri.parse(
          'https://api.escuelajs.co/api/v1/products?limit=20&offset=0'),
    );
    final lista = jsonDecode(res.body) as List<dynamic>;
    return lista
        .map((e) => VehiculoDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paso 3 · API real'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: FutureBuilder<List<Vehiculo>>(
        future: _fetchVehiculos(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return Center(child: Text('Error: ${snap.error}'));
          }

          final vehiculos = snap.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: vehiculos.length,
            itemBuilder: (context, i) {
              final p = vehiculos[i];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor:
                        p.activo ? Colors.green[100] : Colors.grey[200],
                    child: Text(
                      p.id.toString(),
                      style: TextStyle(
                        color: p.activo ? Colors.green[800] : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  title: Text(p.nombre),
                  subtitle: Text(p.categoria ?? 'Sin categoría'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${p.precio.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        p.activo ? 'Activo' : 'Inactivo',
                        style: TextStyle(
                          color: p.activo ? Colors.green : Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}