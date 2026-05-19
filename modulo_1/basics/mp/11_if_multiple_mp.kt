fun main() {
    println("Controles de Flujo")
    println("Condicional If - multiples condiciones")
    println("Numero de pasajeros")
    val numeroPasajeros = readLine()?.toIntOrNull() ?: 0
    val clasificacion = if(numeroPasajeros<=10){
        "Bus casi vacio"
    } else if(numeroPasajeros<=30){
        "Capacidad normal"
    } else if(numeroPasajeros <= 50 ){
        "Bus lleno"
    }else if(numeroPasajeros <= 60){
        "Sobre capacidad"
    }else if(numeroPasajeros <= 70){
        "Muy sobrecargado"
    } else{
        "Emergencia de capacidad"
    }
    println("Clasificacion: $clasificacion.uppercase()")
    println("Clasificacion: ${clasificacion.uppercase()}")

}