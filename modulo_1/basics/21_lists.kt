fun main() {
  println("Listas-Inmutable")
  val frutas = listOf("manzanas", "banana","cereza","banana","pera")
  println("Size: ${frutas.size}")
  println("Mostrar el elemento indice 0: ${frutas[0]}")
  println("Mostrar el primer elemento indice 0: ${frutas.first()}")
  println("Mostrar el ultimo elemento: ${frutas.last()}")
  
  
  println("Mostrar el elemento indice 0: ${frutas.get(2)}")
  println("Mostrar el primer elemento indice 0: ${frutas.indexOf("banana")}")
  println("Mostrar el ultimo elemento: ${frutas.contains("cereza")}")
  println("Mostrar el ultimo elemento: ${"banana" in frutas}")
  
  //sublista
  println("sublista: ${frutas.subList(1, 3)}")
  println("tomar primeros 2 elementos: ${frutas.take(2)}")
  println("suprimir primeros tres elementos: ${frutas.drop(3)}")
  println("tomar los ultimos tres elementos: ${frutas.takeLast(2)}")
  
  for(fruta in frutas){
      println(fruta)
  }
  println("Listas-Mutables")
  val colores = mutableListOf("blanco", "azul","amarillo","rojo")
  println(colores)
  colores.add("verde")
  colores.add(0,"morado")
  println(colores)
  colores.remove("verde")
  println(colores)
  colores[1]="gris"
  println(colores)

println("Array deque")
val deque = ArrayDeque<Int>()
println(deque)
deque.addFirst(1)
println(deque)
deque.addLast(2)
println(deque)
deque.addLast(0)
println(deque)
deque.removeFirst()
println(deque)
deque.removeLast()
println(deque)
 }