// lib/screens/pantalla_buses_mp.dart
import 'package:flutter/material.dart';
import 'package:modulo09_formularios_mp/widgets/tarjetaservidorgrid_mp.dart';
import '../models/servidor_ssh_mp.dart';
import '../widgets/fila_servidor_mp.dart';
import '../widgets/tarjeta_servidor_grid_mp.dart' hide TarjetaBusGrid;

class PantallaBuses extends StatefulWidget {
  const PantallaBuses({super.key});
  @override
  State<PantallaBuses> createState() => _PantallaBusesState();
}

class _PantallaBusesState extends State<PantallaBuses> {
  final _buses = [
    BusSSH(id:'1', nombre:'Bus-01',  ruta:'Ruta 42',   capacidad:22,   conductor:'Juan Perez',   modelo:'Volvo 2024', clima:true,  favorito:true),
    BusSSH(id:'2', nombre:'Bus-02',   ruta:'Ruta 10',   capacidad:22,   conductor:'Carlos Ruiz', modelo:'Mercedes 2023',    clima:true),
    BusSSH(id:'3', nombre:'Bus-03',  ruta:'Ruta 8',   capacidad:2222, conductor:'Luis Gomez',   modelo:'Volvo 2024', clima:false),
    BusSSH(id:'4', nombre:'Bus-04',  ruta:'Ruta 55', capacidad:22,   conductor:'Ana Torres',  modelo:'Scania 2022', clima:false),
  ];

  bool _modoGrid = false;   // false = lista, true = cuadrícula

  void _toggleFavorito(int i) =>
      setState(() => _buses[i].favorito = !_buses[i].favorito);

  void _eliminar(int i) => setState(() => _buses.removeAt(i));

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           Text('Buses (${_buses.length})'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        actions: [
          // Toggle lista / cuadrícula
          IconButton(
            icon:    Icon(_modoGrid ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => _modoGrid = !_modoGrid),
            tooltip: _modoGrid ? 'Vista lista' : 'Vista cuadrícula',
          ),
        ],
      ),
      body: _modoGrid
          ? GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:   2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 8,
                mainAxisSpacing:  8,
              ),
              itemCount:   _buses.length,
              itemBuilder: (ctx, i) => TarjetaBusGrid(
                bus:   _buses[i],
                onFavorito: () => _toggleFavorito(i),
                onEliminar: () => _eliminar(i),
              ),
            )
          : ListView.separated(
              itemCount:        _buses.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, indent: 72),
              itemBuilder: (ctx, i) => FilaBus(
                bus:   _buses[i],
                onFavorito: () => _toggleFavorito(i),
                onEliminar: () => _eliminar(i),
              ),
            ),
    );
  }
}