// lib/router/app_router_mp.dart
import 'package:go_router/go_router.dart';
import '../screens/pantalla_inicio_mp.dart';
import '../screens/pantalla_buses_mp.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,  // imprime cada navegación en la consola
  routes: [
    GoRoute(
      path:    '/',
      name:    'inicio',
      builder: (context, state) => const PantallaInicio(),
    ),
    GoRoute(
      path:    '/buses',
      name:    'buses',
      builder: (context, state) => const PantallaBuses(),
    ),
  ],
);