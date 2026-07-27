// lib/router/app_router_paso3.dart
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/screens/pantalla_buses_filtro_mp.dart';
import '../screens/pantalla_inicio_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../models/bus_ssh_mp.dart';

final appRouterPaso3 = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path:    '/',
      builder: (context, state) => const PantallaInicio(),
    ),
    GoRoute(
      path:    '/buses',
      builder: (context, state) {
        // Query parameters — /buses?soloSSL=true
        final soloSSL = state.uri.queryParameters['soloSSL'] == 'true';
        return PantallaBusesFiltro(soloSSL: soloSSL);
      },
    ),
    GoRoute(
      path:    '/buses/:id',
      builder: (context, state) {
        final id       = state.pathParameters['id']!;
        final bus = state.extra as BusSSH?;
        return PantallaDetalle(id: id, bus: bus);
      },
    ),
  ],
);