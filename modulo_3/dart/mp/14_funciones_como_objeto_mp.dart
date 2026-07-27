int subir(int n)  => n + 20;
int bajar(int n) => n - 10;

void main() {
  int Function(int) operacion;

  operacion = subir;
  print(operacion(5));

  operacion = bajar;
  print(operacion(5));

  final acciones = <int Function(int)>[subir, bajar];
  for (final fn in acciones) {
    print(fn(10));
  }
}