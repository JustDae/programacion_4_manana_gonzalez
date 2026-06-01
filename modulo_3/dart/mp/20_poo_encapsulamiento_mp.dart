class TarjetaTransporte {
  final String titular;
  double _saldo;

  TarjetaTransporte(this.titular, double saldoInicial) : _saldo = saldoInicial;

  double get saldo => _saldo;

  void recargar(double monto) {
    if (monto <= 0) throw ArgumentError('El monto debe ser positivo');
    _saldo += monto;
    print('Recarga de \$$monto. Nuevo saldo: \$$_saldo');
  }

  void pagarPasaje(double monto) {
    if (monto <= 0)      throw ArgumentError('El monto debe ser positivo');
    if (monto > _saldo)  throw StateError('Saldo insuficiente');
    _saldo -= monto;
    print('Pasaje de \$$monto pagado. Nuevo saldo: \$$_saldo');
  }
}

void main() {
  final tarjeta = TarjetaTransporte('Ana López', 5.00);
  tarjeta.recargar(2.00);
  tarjeta.pagarPasaje(0.35);
  print(tarjeta.saldo);
}