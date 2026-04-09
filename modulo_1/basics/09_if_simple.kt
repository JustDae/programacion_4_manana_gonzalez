fun main() {
  println("controles de flujo")
  println("condicional if")
  println("Incluir Temperatura en grados centigrados:")
  val temperatura = readLine()?.toDoubleOrNull()?: 36.5
  if (temperatura >= 38.0){
      println("Fiebre detectada: derivar consulta prioritaria")
  }
  if(temperatura >= 40.0){
      println("fiebre alta: atencion de emergencia inmediata")
  }
  println("temperatura registrada: $temperatura grados centigrados")
}