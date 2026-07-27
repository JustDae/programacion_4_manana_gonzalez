// lib/providers/buses_provider_mp.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart' show StateProvider;
import '../models/bus_ssh_mp.dart';

// NotifierProvider — estado complejo con métodos propios
class BusesNotifier extends Notifier<List<BusSSH>> {
  @override
  List<BusSSH> build() => [
    BusSSH(id:'1', nombre:'Bus-01', ruta:'Ruta 42', capacidad:22,   clima:true,  favorito:true),
    BusSSH(id:'2', nombre:'Bus-02',  ruta:'Ruta 10', capacidad:22,   clima:true),
    BusSSH(id:'3', nombre:'Bus-03', ruta:'Ruta 8', capacidad:2222, clima:false),
    BusSSH(id:'4', nombre:'Bus-04',  ruta:'Ruta 55', capacidad:40, clima:false)
  ];

  void toggleFavorito(String id) {
    state = state.map((s) =>
        s.id == id
          ? BusSSH(id:s.id, nombre:s.nombre, ruta:s.ruta,
                        capacidad:s.capacidad, clima:s.clima,
                        favorito:!s.favorito)
          : s
    ).toList();
  }

  void eliminar(String id) {
    state = state.where((s) => s.id != id).toList();
  }

  void agregar(BusSSH bus) {
    state = [...state, bus];
  }
}

final busesProvider =
    NotifierProvider<BusesNotifier, List<BusSSH>>(
  BusesNotifier.new,
);

// Filtro de búsqueda — estado primitivo
final busquedaProvider = StateProvider<String>((ref) => '');

// Provider DERIVADO — se recalcula cuando cualquiera de sus dependencias cambia
final busesFiltradosProvider = Provider<List<BusSSH>>((ref) {
  final todos    = ref.watch(busesProvider);
  final busqueda = ref.watch(busquedaProvider);

  if (busqueda.isEmpty) return todos;

  final q = busqueda.toLowerCase();
  return todos.where((s) =>
      s.nombre.toLowerCase().contains(q) || s.ruta.contains(q)
  ).toList();
  // Cuando 'busesProvider' o 'busquedaProvider' cambian,
  // este provider se recalcula automáticamente.
});