fun main() {
    println("Controles de Flujo")
    println("Condicional If")
    println("Tiene boleto s/n: ")
    val tieneBoleto = readLine()?.trim()?.lowercase()=="s"
    println("Tarifa Base: ")
    val tarifaBase = readLine()?.toDoubleOrNull()?:0.0
    if(tieneBoleto){
        val descuento = tarifaBase*0.20
        println("Descuento aplicado: $${"%.2f".format(descuento)}")
    }else {
        println("Pago Completo: $${"%.2f".format(tarifaBase)}")
    }
}