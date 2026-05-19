fun main() {
    val ruta = "Linea 1"
    val destino = "Centro" 
    val capacidad = 50 
    //variable simple
    println("Ruta $ruta") 
    //expresion
    println("Destino completo : ${ruta.uppercase()} ${destino.uppercase()}")
    val destinoCompleto = "Destino Completo : ${ruta.uppercase()} ${destino.uppercase()}"
    println(destinoCompleto)
    println("Capacidad : ${capacidad+10} pasajeros")
    //string Multilinea
    val boleto = """
    |Ruta: $ruta $destino
    |Capacidad: $capacidad
    |Acceso: ${if(capacidad>=30) "permitido" else "Denegado"}
    """.trimMargin()
    println(boleto)
}
    
   
