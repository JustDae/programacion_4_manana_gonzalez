// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println("Utilidades List")
  val numeros = listOf(1,2,3,4,5,6,7,8,9,10)
  println(numeros)
  val cuadrados = numeros.map{it*it}
  println(cuadrados)
  val numerosTextos = numeros.map{"Num$it"}
  println(numerosTextos)
  
  println("filter")
  val pares = numeros.filter{it % 2 == 0 }
  println(pares)
  val mayores5 = numeros.filter{it > 5 }
  println(mayores5)
  val paresYMayores5 = numeros.filter{it % 2 == 0 && it > 5 }
  println(paresYMayores5)
  val impares=numeros.filterNot{it % 2 == 0}
  println(impares)
  
  val mezcla = listOf(1, "Hola", 2, "Mundo", true,42)
  val soloStrings=mezcla.filterIsInstance<String>()
  println(soloStrings)
  
  println("reduce")
  val numerosReduce = listOf(1,2,3,4,5)
  val suma = numerosReduce.reduce {acc, n -> acc + n}
  println(suma)
  val producto = numerosReduce.reduce {acc ,n -> acc * n}
  println(producto)
  
  println("fold")
   val sumaFold = numerosReduce.fold(100) {acc, n -> acc + n}
  println(sumaFold)
  val productoFold = numerosReduce.fold(100) {acc ,n -> acc * n}
  println(productoFold)
  
  println("Ordenar")
  println("Ascendente: ${numeros.sorted()}")
  println("Descendente: ${numeros.sortedDescending()}")
  println("Sorter by: ${numeros.sortedBy{-it}} ")
  
  println("Agregacion")
   println("sumar: ${numeros.sum()}")
  println("promedio: ${numeros.average()}")
  println("minimo: ${numeros.min()} ")
  println("maximo: ${numeros.max()} ")
  println("contar: ${numeros.count{it > 4}} ")
  
  println("Busqueda")
  println("Buscar: ${numeros.find{it > 4}}")
  println("Buscar ultimo: ${numeros.findLast {it > 4}}")
  println("Buscar any: ${numeros.any {it > 4}}")
  println("Buscar all: ${numeros.all {it > 0}}")
  println("Buscar none: ${numeros.none {it > 10}}")
  
 }