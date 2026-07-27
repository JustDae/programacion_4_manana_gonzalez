// lib/screens/scaffold_con_nav_mp.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldConNav extends StatelessWidget {
  final Widget child;
  const ScaffoldConNav({super.key, required this.child});

  // Detecta la ruta activa para resaltar la tab correcta
  int _indiceActivo(BuildContext context) {
    final loc = GoRouterState.of(context).uri.path;
    if (loc.startsWith('/metricas')) return 1;
    if (loc.startsWith('/ajustes'))  return 2;
    return 0; // /buses
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,    // child cambia, el Scaffold NO se reconstruye
      bottomNavigationBar: NavigationBar(
        selectedIndex:         _indiceActivo(context),
        onDestinationSelected: (i) {
          switch (i) {
            case 0: context.go('/buses');
            case 1: context.go('/metricas');
            case 2: context.go('/ajustes');
            case 3: context.go('/dashboard');
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.directions_bus_outlined), selectedIcon: Icon(Icons.directions_bus),
            label: 'Buses',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined), selectedIcon: Icon(Icons.bar_chart),
            label: 'Estado de la flota',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined), selectedIcon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
           NavigationDestination(
            icon: Icon(Icons.dashboard_outlined), selectedIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],  
      ),
    );
  }
}