fun main() {
  println("Listas de Rutas - Inmutable")
  val rutas = listOf("Norte", "Sur", "Este", "Sur", "Oeste")
  println("Cantidad de rutas: ${rutas.size}")
  println("Mostrar ruta índice 0: ${rutas[0]}")
  println("Mostrar la primera ruta: ${rutas.first()}")
  println("Mostrar la última ruta: ${rutas.last()}")
  
  println("Mostrar ruta índice 2: ${rutas.get(2)}")
  println("Posición de la primera ruta 'Sur': ${rutas.indexOf("Sur")}")
  println("¿Existe la ruta 'Este'?: ${rutas.contains("Este")}")
  println("¿Está la ruta 'Sur' activa?: ${"Sur" in rutas}")
  
  println("Subsector de rutas: ${rutas.subList(1, 3)}")
  println("Tomar primeras 2 rutas: ${rutas.take(2)}")
  println("Suprimir primeras tres rutas: ${rutas.drop(3)}")
  println("Tomar las últimas dos rutas: ${rutas.takeLast(2)}")
  
  for(ruta in rutas){
      println("Ruta: $ruta")
  }

  println("Unidades en Terminal - Mutables")
  val unidades = mutableListOf("Bus-01", "Bus-02", "Bus-03", "Bus-04")
  println(unidades)
  unidades.add("Bus-05")
  unidades.add(0, "Bus-00")
  println(unidades)
  unidades.remove("Bus-05")
  println(unidades)
  unidades[1] = "Bus-Editado"
  println(unidades)

  println("Cola de Despacho (Array deque)")
  val despacho = ArrayDeque<Int>()
  println(despacho)
  despacho.addFirst(101)
  println(despacho)
  despacho.addLast(102)
  println(despacho)
  despacho.addLast(100)
  println(despacho)
  despacho.removeFirst()
  println(despacho)
  despacho.removeLast()
  println(despacho)
}