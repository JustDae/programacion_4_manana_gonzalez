fun main() {
    println("Tipos Datos")
    println("Numeros Enteros")
    val numeroBuses: Byte = 127 
    println("Numero de Buses $numeroBuses")
    val pasajerosDiarios: Short = 32_765
    println("Pasajeros Diarios $pasajerosDiarios")
    val totalPasajeros: Int = 2_147_483_647 
    println("Total Pasajeros $totalPasajeros")
    val distanciaRecorrida: Long = 32_322_322_322_322_322L 
    println("Distancia Recorrida $distanciaRecorrida")
    val tarifa: Float = 1.147f 
    println("Tarifa $tarifa")
    val velocidadPromedio: Double = 3.14159265 
    println("Velocidad Promedio $velocidadPromedio")
    
    
    val conductor="Juan"
    val experiencia = 56 
    println("Conductor $conductor")
    val conductorTipo = conductor::class.simpleName
    println("Tipo inferido conductor: $conductorTipo")
    println("Tipo inferido conductor: ${conductor::class.simpleName}")
    val experienciaTipo = experiencia::class.simpleName
    println("Experiencia: $experiencia") 
    println("Tipo inferido experiencia: $experienciaTipo")
    println("Tipo inferido experiencia : ${experiencia::class.simpleName}")
}