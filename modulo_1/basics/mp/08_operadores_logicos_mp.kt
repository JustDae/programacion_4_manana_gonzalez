fun main() {
  println("Operadores de Comparacion")
  val esHoraPico = true
  val tieneBoleto = false
  val estaEnServicio=true
  println("&& - And Logico")
  println("$esHoraPico && $tieneBoleto=${esHoraPico && tieneBoleto}")
  println("$estaEnServicio && $esHoraPico = 5 ${estaEnServicio && esHoraPico}")
  print("|| - or Logico")
  println("$esHoraPico || $tieneBoleto=${esHoraPico || tieneBoleto}")
  println("$estaEnServicio || $esHoraPico = 5 ${estaEnServicio || esHoraPico}")
  print("! - Not Logico")
  println("!esHoraPico=${!esHoraPico}")
  println("!estaEnServicio=${!estaEnServicio}")
}