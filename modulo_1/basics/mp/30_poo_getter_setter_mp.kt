class CapacidadUnidad(pasajeros: Int) {

    var pasajeros: Int = pasajeros
        set(value) {
            require(value >= 0) { "La cantidad de pasajeros no puede ser negativa" }
            require(value <= 80) { "Supera la capacidad técnica de la unidad (máximo 80)" }
            field = value
        }

    val porcentajeOcupacion: Double
        get() = (pasajeros * 100.0) / 80.0

    val espacioDisponible: Int
        get() = 80 - pasajeros

    val estadoCarga: String
        get() = when {
            pasajeros == 0  -> "Unidad Vacía"
            pasajeros < 20  -> "Baja Ocupación"
            pasajeros < 50  -> "Ocupación Media"
            pasajeros < 75  -> "Unidad Casi Llena"
            else            -> "Capacidad Máxima"
        }
}

fun main() {
    val bus = CapacidadUnidad(20)
    println("${bus.pasajeros} pasajeros = ${bus.porcentajeOcupacion}% de ocupación")
    println("Estado: ${bus.estadoCarga}")

    bus.pasajeros = 78
    println("${bus.pasajeros} pasajeros → ${bus.estadoCarga}")
    println("Asientos libres: ${bus.espacioDisponible}")

    
}