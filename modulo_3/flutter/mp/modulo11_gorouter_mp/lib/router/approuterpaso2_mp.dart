// lib/router/app_router_paso2.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/pantalla_inicio_mp.dart';
import '../screens/pantalla_buses_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../models/servidor_ssh_mp.dart';

final appRouterPaso2 = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path:    '/',
      builder: (context, state) => const PantallaInicio(),
    ),
    GoRoute(
      path:    '/buses',
      builder: (context, state) => const PantallaBuses(),
      routes: [
        // Ruta hija: /buses/:id
        GoRoute(
          path:    ':id',   // relativa — ruta completa: /buses/:id
          builder: (context, state) {
            final id       = state.pathParameters['id']!;
            final bus = state.extra as BusSSH?;
            return PantallaDetalle(id: id, bus: bus);
          },
        ),
        // Ruta hija: /buses/:id/logs
        GoRoute(
          path:    ':id/logs',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return Scaffold(
              appBar: AppBar(title: Text('Logs de $id')),
              body:   Center(child: Text('Logs del servidor $id')),
            );
          },
        ),
      ],
    ),
  ],
);