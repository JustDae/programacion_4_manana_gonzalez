fun main() {
  println("Operadores de Comparacion")
  val esMayor = true
  val tienePermiso = false
  val estaActivo=true
  println("&& - And Logico")
  println("$esMayor && $tienePermiso=${esMayor && tienePermiso}")
  println("$estaActivo && $esMayor = 5 ${estaActivo && esMayor}")
  print("|| - or Logico")
  println("$esMayor || $tienePermiso=${esMayor || tienePermiso}")
  println("$estaActivo || $esMayor = 5 ${estaActivo || esMayor}")
  print("! - Not Logico")
  println("!esMayor=${!esMayor}")
  println("!estaActivo=${!estaActivo}")
}