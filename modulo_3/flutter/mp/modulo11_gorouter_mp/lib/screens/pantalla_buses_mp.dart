import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/models/bus_ssh_mp.dart';

class PantallaBuses extends StatelessWidget {
  const PantallaBuses({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final buses = busesSimulados;

    return Scaffold(
      appBar: AppBar(
        title:           const Text('Buses'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/');
            }
          },
        ),
      ),
      body: ListView.builder(
        itemCount:   buses.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.directions_bus),
          title:   Text(buses[i].nombre),
          onTap: () {
            context.push('/buses/${buses[i].id}', extra: buses[i]);
            
          },
        ),
      ),
    );
  }
}