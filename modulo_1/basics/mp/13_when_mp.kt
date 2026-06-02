fun main() {
    println("Controles de Flujo when")
    println("Escribe numero de ruta")
    val codigo = readLine()?.toIntOrNull()?: 0
    val tipoBus = when(codigo){
        1->"Autobus urbano"
        2-> "Microbus"
        3-> "BRT"
        4-> "Tren ligero"
        5-> "Metro"
        6-> "Tranvia"
        else -> "Ruta no registrada en el sistema"
    }
    println("Tipo de bus: $tipoBus")

}

fun main() {
    println("Controles de Flujo when")
    println("Seleccione la linea de bus:") 
    println("1. Linea 1 Centro")
    println("2. Linea 2 Norte") 
    println("3. Linea 3 Sur") 
    println("4. Linea 4 Este") 
    println("5. Linea 5 Oeste")
    println("Escriba su respuesta (1-5): ")
    val codigo = readLine()?.toIntOrNull()?: 0
    val linea = when(codigo){
        1->"Linea 1 Centro - tiempo estimado: 30min"
        2-> "Linea 2 Norte - tiempo estimado: 45min"
        3-> "Linea 3 Sur - tiempo estimado: 40min"
        4-> "Linea 4 Este - tiempo estimado: 35min"
        5-> "Linea 5 Oeste - tiempo estimado: 50min"
        else -> "Linea no registrada en el sistema"
    }
    println("Linea seleccionada: $linea", )