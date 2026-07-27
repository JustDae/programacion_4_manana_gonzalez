// lib/router/app_router_paso4_mp.dart
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/screens/pantalla_dashboard_mp.dart';
import 'package:modulo11_gorouter_mp/screens/scaffold_con_nav_mp.dart';
import '../screens/pantalla_buses_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../screens/pantalla_metricas_mp.dart';
import '../screens/pantalla_ajustes_mp.dart';
import '../models/bus_ssh_mp.dart';

final appRouterPaso4 = GoRouter(
  initialLocation: '/buses',
  debugLogDiagnostics: true,
  routes: [
    // ShellRoute — mantiene ScaffoldConNav vivo entre rutas hijas
    ShellRoute(
      builder: (context, state, child) => ScaffoldConNav(child: child),
      routes: [
        GoRoute(
          path:    '/buses',
          builder: (_, __) => const PantallaBuses(),
          routes: [
            GoRoute(
              path:    ':id',
              builder: (context, state) {
                final id       = state.pathParameters['id']!;
                final bus = state.extra as BusSSH?;
                return PantallaDetalle(id: id, bus: bus);
              },
            ),
          ],
        ),
        GoRoute(
          path:    '/metricas',
          builder: (_, __) => const PantallaMetricas(),
        ),
        GoRoute(
          path:    '/ajustes',
          builder: (_, __) => const PantallaAjustes(),
        ),
        GoRoute(
          path:    '/dashboard',
          builder: (_, __) => const PantallaDashboard(),
        ),
      ],
    ),
  ],
);