fun main() {
    println("operadores aritmeticos")
    val pasajerosIniciales = 10
    val buses = 2
    println("Suma")
    println("$pasajerosIniciales + $buses : ${pasajerosIniciales+buses}")
    println("resta")
    println("$pasajerosIniciales - $buses : ${pasajerosIniciales-buses}")
    println("Multiplicacion")
    println("$pasajerosIniciales * $buses : ${pasajerosIniciales*buses}")
    println("Division")
    println("$pasajerosIniciales / $buses : ${pasajerosIniciales/buses}")
    println("Modulo")
    println("$pasajerosIniciales % $buses : ${pasajerosIniciales%buses}")
    println("Operadores de asignacion compuesta")
    var capacidad=10
    capacidad+=5
    println("capacidad +=5 $capacidad")
    capacidad-=3
    println("capacidad-=3 $capacidad")
    capacidad*=6
    println("capacidad*=6 $capacidad")
    capacidad/=2
    println("capacidad/=2 $capacidad")
    capacidad%=2
    println("capacidad%=2 $capacidad")
    //incremento o decremento
    capacidad++
    println("capacidad++ $capacidad")
    capacidad--
    println("capacidad-- $capacidad")
}