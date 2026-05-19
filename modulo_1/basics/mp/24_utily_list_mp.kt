fun main() {
  println("Utilidades de Flota")
  val unidades = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  println(unidades)
  val unidadesDobladas = unidades.map { it * 2 }
  println(unidadesDobladas)
  val registrosBus = unidades.map { "Bus-$it" }
  println(registrosBus)
  
  println("filter")
  val rutasPares = unidades.filter { it % 2 == 0 }
  println(rutasPares)
  val flotaPesada = unidades.filter { it > 5 }
  println(flotaPesada)
  val busesEspeciales = unidades.filter { it % 2 == 0 && it > 5 }
  println(busesEspeciales)
  val rutasImpares = unidades.filterNot { it % 2 == 0 }
  println(rutasImpares)
  
  val bitacora = listOf(101, "En Ruta", 102, "Mantenimiento", true, 500)
  val estadosTexto = bitacora.filterIsInstance<String>()
  println(estadosTexto)
  
  println("reduce")
  val conteoPasajeros = listOf(1, 2, 3, 4, 5)
  val sumaPasajeros = conteoPasajeros.reduce { acc, n -> acc + n }
  println(sumaPasajeros)
  val factorCarga = conteoPasajeros.reduce { acc, n -> acc * n }
  println(factorCarga)
  
  println("fold")
  val basePasajerosSuma = conteoPasajeros.fold(100) { acc, n -> acc + n }
  println(basePasajerosSuma)
  val basePasajerosProd = conteoPasajeros.fold(100) { acc, n -> acc * n }
  println(basePasajerosProd)
  
  println("Ordenar")
  println("Ascendente: ${unidades.sorted()}")
  println("Descendente: ${unidades.sortedDescending()}")
  println("Prioridad inversa: ${unidades.sortedBy { -it }}")
  
  println("Agregacion")
  println("Kilometraje total: ${unidades.sum()}")
  println("Promedio unidades: ${unidades.average()}")
  println("Unidad menor ID: ${unidades.min()}")
  println("Unidad mayor ID: ${unidades.max()}")
  println("Contar rutas largas: ${unidades.count { it > 4 }}")
  
  println("Busqueda")
  println("Encontrar unidad: ${unidades.find { it > 4 }}")
  println("Encontrar última unidad: ${unidades.findLast { it > 4 }}")
  println("Hay unidades activas?: ${unidades.any { it > 4 }}")
  println("Todas son válidas?: ${unidades.all { it > 0 }}")
  println("Ninguna fuera de rango?: ${unidades.none { it > 10 }}")
}