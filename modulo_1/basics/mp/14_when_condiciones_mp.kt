fun main() {
    println("Controles de Flujo when con condiciones arbitrarias")
    println("Escriba codigo:") 
    println("edad del pasajero")
    val edad = readLine()?.toIntOrNull()?:0
    println("Tiene boleto?: ")
    val tieneBoleto = readLine()?.trim()?.lowercase()=="s"
    val tipoBoleto = if(tieneBoleto){
        println("Tipo de boleto (ESTUDIANTE /JUBILADO /NORMAL)")
        readLine()?.trim()?.uppercase()?:""
    } else ""
    val tarifa = when{
      !tieneBoleto && edad <18->0.0
      !tieneBoleto && edad >=65->10.0
      !tieneBoleto -> 20.0
      tipoBoleto == "ESTUDIANTE" ->5.0
      tipoBoleto == "JUBILADO" ->5.0
      tipoBoleto == "NORMAL" ->15.0
      else -> 20.0
    }
    println("Tarifa: $${"%.2f".format(tarifa)}")
}