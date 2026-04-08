fun main() {
    val nombre = "Peter"
    val apellido = "Parker" 
    val edad = 28 
    //variable simple
    println("Hola $nombre") 
    //expresion
    println("Nombre completo : ${nombre.uppercase()} ${apellido.uppercase()}")
    val nombreCompleto = "Nombre Completo : ${nombre.uppercase()} ${apellido.uppercase()}"
    println(nombreCompleto)
    println("Edad : ${edad+6} años")
    //string Multilinea
    val tarjeta = """
    |Nombre: $nombre $apellido
    |Edad: $edad
    |Acceso: ${if(edad>=18) "permitido" else "Denegado"}
    """.trimMargin()
    println(tarjeta)
}
    
   
