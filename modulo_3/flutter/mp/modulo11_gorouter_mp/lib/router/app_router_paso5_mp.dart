// lib/router/app_router_paso5_mp.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/screens/pantalla_dashboard_mp.dart';
import '../providers/auth_provider_mp.dart';
import '../screens/scaffold_con_nav_mp.dart';
import '../screens/pantalla_buses_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../screens/pantalla_metricas_mp.dart';
import '../screens/pantalla_ajustes_mp.dart';
import '../screens/pantalla_login_mp.dart';
import '../models/bus_ssh_mp.dart';

// Función que crea el router con acceso al WidgetRef (para el guard)
GoRouter appRouterPaso5(WidgetRef ref) => GoRouter(
  initialLocation: '/buses',
  debugLogDiagnostics: true,
  redirect: (context, state) {
    final authState     = ref.read(authProvider);
    final autenticado   = authState is Autenticado;
    final enLogin       = state.matchedLocation == '/login';

    // No autenticado y no está en /login → ir al login
    if (!autenticado && !enLogin) return '/login';
    // Autenticado y está en /login → ir a la app
    if (autenticado && enLogin)   return '/buses';
    // Sin redirección
    return null;
  },
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldConNav(child: child),
      routes: [
        GoRoute(
          path:    '/buses',
          builder: (_, __) => const PantallaBuses(),
          routes: [
            GoRoute(
              path:    ':id',
              builder: (context, state) => PantallaDetalle(
                id:       state.pathParameters['id']!,
                bus: state.extra as BusSSH?,
              ),
            ),
          ],
        ),
        GoRoute(path: '/metricas', builder: (_, __) => const PantallaMetricas()),
        GoRoute(path: '/ajustes',  builder: (_, __) => const PantallaAjustes()),
        GoRoute(
          path:    '/dashboard',
          builder: (_, __) => const PantallaDashboard(),
        ),
      ],
    ),
    GoRoute(
      path:    '/login',
      builder: (_, __) => const PantallaLogin(),
    ),
  ],
);