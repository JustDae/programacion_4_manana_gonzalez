void main() {
  final calcularTarifaDoble = (int base) => base * 2;
  print(calcularTarifaDoble(7));

  final calcularPasajeConDescuento = (double tarifa, double pctDescuento) {
    final descuento = tarifa * (pctDescuento / 100);
    return tarifa - descuento;
  };
  print(calcularPasajeConDescuento(100.0, 15.0));

  final frecuenciasRutas = [3, 1, 4, 1, 5, 9, 2, 6];
  frecuenciasRutas.sort((a, b) => b.compareTo(a));
  print(frecuenciasRutas);
}