import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import 'todo_dto_mp.dart';

class PantallaPaso2 extends StatelessWidget {
  const PantallaPaso2({super.key});

  Future<List<ViajeDto>> _fetchViajes() async {
    final res = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=15'),
    );
    final lista = jsonDecode(res.body) as List<dynamic>;
    return lista
        .map((e) => ViajeDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paso 2 · DTO simple'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: FutureBuilder<List<ViajeDto>>(
        future: _fetchViajes(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return Center(child: Text('Error: ${snap.error}'));
          }

          final viajes = snap.data!;
          return Column(
            children: [
              // Resumen con chips
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Chip(
                      label: Text(
                          '${viajes.where((t) => t.completed).length} completadas'),
                      backgroundColor: Colors.green[100],
                    ),
                    const SizedBox(width: 8),
                    Chip(
                      label: Text(
                          '${viajes.where((t) => !t.completed).length} pendientes'),
                      backgroundColor: Colors.orange[100],
                    ),
                  ],
                ),
              ),
              // Lista de viajes
              Expanded(
                child: ListView.builder(
                  itemCount: viajes.length,
                  itemBuilder: (context, i) {
                    final t = viajes[i];
                    return CheckboxListTile(
                      title: Text(t.title),
                      subtitle: Text('ID: ${t.id}'),
                      value: t.completed,
                      onChanged: null, // solo lectura por ahora
                      activeColor: Colors.green,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}