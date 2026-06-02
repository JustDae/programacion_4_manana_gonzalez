class Conductor(val nombre: String, val unidadAsignada: Int)

class Ruta(val nombre: String, val tiempoEstimado: Int) {
    fun obtenerDetalles() = "Ruta: $nombre - Tiempo: $tiempoEstimado minutos"
    fun esRutaLarga() = tiempoEstimado > 60
}

fun main() {
    val c = Conductor("Danna", 102)
    println(c.nombre)           
    println(c.unidadAsignada)   

    val r = Ruta("Troncal Central", 45)
    println(r.obtenerDetalles()) 
    println(r.esRutaLarga())     
}