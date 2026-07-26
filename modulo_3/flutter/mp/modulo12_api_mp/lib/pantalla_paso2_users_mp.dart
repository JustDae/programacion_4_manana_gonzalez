import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import 'todo_dto2_mp.dart';

class PantallaPaso2Users extends StatelessWidget {
  const PantallaPaso2Users({super.key});

  Future<List<ConductorDto>> _fetchConductores() async {
    final res = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users?_limit=15'),
    );
    final lista = jsonDecode(res.body) as List<dynamic>;
    return lista
        .map((e) => ConductorDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paso 2 · DTO conductores'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: FutureBuilder<List<ConductorDto>>(
        future: _fetchConductores(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return Center(child: Text('Error: ${snap.error}'));
          }

          final conductores = snap.data!;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Chip(
                      label: Text('${conductores.length} usuarios'),
                      backgroundColor: Colors.blue[100],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: conductores.length,
                  itemBuilder: (context, i) {
                    final conductor = conductores[i];
                    return ListTile(
                      title: Text(conductor.name),
                      subtitle: Text(conductor.email),
                      leading: CircleAvatar(
                        child: Text(conductor.id.toString()),
                      ),
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