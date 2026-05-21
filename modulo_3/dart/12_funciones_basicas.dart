// Sintaxis completa — preferida para funciones públicas
import 'dart:io';

int sumar(int a, int b) {
  return a + b;
}

// Sintaxis de flecha — cuando el cuerpo es una sola expresión
int multiplicar(int a, int b) => a * b;

// void — cuando no se devuelve nada
void imprimirSeparador(String titulo) {
  print('─── $titulo ───');
}


void main() {
  print(sumar(5, 3));          // 8
  print(multiplicar(4, 6));    // 24
  imprimirSeparador('Inicio'); // ─── Inicio ───
}
// Dart puede inferir el tipo de retorno, pero es buena práctica declararlo
// explícitamente en funciones públicas para mejorar la legibilidad.

// Con tipo explícito — recomendado
String formatearPrecio(double precio) => '\$${precio.toStringAsFixed(2)}';

// Sin tipo — Dart infiere que retorna String
formatearPrecioSinTipo(double precio) => '\$${precio.toStringAsFixed(2)}';

void main() {
  print(formatearPrecio(1299.9));  // $1299.90
}