fun main() {
    println("Controles de Flujo")
    println("Condicional If-Multiples condiciones")
    println("Tienes boleto?")
    val tieneBoleto = readLine()?.trim()?.lowercase()=="s"
    println("Edad del pasajero")
    val edad = readLine()?.toIntOrNull()?:0
    
    if(tieneBoleto){
        print("Pasajero con boleto ")
        if(edad<18){
            println("Menor de edad")
        } else if(edad>65){
            println("Jubilado")
        } else{
            println("Adulto")
        }
    } else{
        print("Pasajero sin boleto ")
        if(edad<18 || edad > 65){
            println("Requiere supervision")
        } else{
            println("Acceso normal")
        }
    }
}