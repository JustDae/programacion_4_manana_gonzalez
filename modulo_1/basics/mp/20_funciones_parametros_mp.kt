fun main() {
    println("Transporte Público - Parámetros por defecto")
    println(registrarUnidad("Unidad 01", 2024, "Troncal", true))
    println(registrarUnidad("Unidad 05"))
    println(registrarUnidad("Unidad 12", 2018))
    println(registrarUnidad("Unidad 08", 2020, "Alimentador"))
    
    println(registrarUnidad(modelo=2022, identificador="Unidad 25", activo=false))
}

fun registrarUnidad(
    identificador: String,
    modelo: Int = 2015,
    tipoRuta: String = "Urbana",
    activo: Boolean = true
): String {
    return "Bus[$identificador, modelo=$modelo, ruta=$tipoRuta, estado=$activo]"
}