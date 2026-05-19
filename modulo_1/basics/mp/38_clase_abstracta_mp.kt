abstract class ServicioTransporte(val nombre: String) {
    abstract val tarifaBase: Double
    abstract val capacidadPasajeros: Int
    abstract fun obtenerTipoServicio(): String

    fun compararCapacidad(otro: ServicioTransporte): String = when {
        capacidadPasajeros > otro.capacidadPasajeros -> "$nombre tiene más capacidad que ${otro.nombre}"
        capacidadPasajeros < otro.capacidadPasajeros -> "$nombre tiene menos capacidad que ${otro.nombre}"
        else -> "$nombre y ${otro.nombre} tienen la misma capacidad"
    }

    override fun toString() = "${obtenerTipoServicio()} | Capacidad: $capacidadPasajeros | Tarifa: $${"%.2f".format(tarifaBase)}"
}

class BusUrbano(val lineas: Int) : ServicioTransporte("Bus Urbano") {
    override val tarifaBase: Double get() = 0.35
    override val capacidadPasajeros: Int get() = 40
    override fun obtenerTipoServicio() = "Servicio de Bus Urbano ($lineas líneas)"
}

class MetroQuito(val vagones: Int) : ServicioTransporte("Metro") {
    override val tarifaBase: Double get() = 0.45
    override val capacidadPasajeros: Int get() = 200 * vagones
    override fun obtenerTipoServicio() = "Metro de Quito ($vagones vagones)"
}

class TaxiEjecutivo(val esVip: Boolean) : ServicioTransporte("Taxi") {
    override val tarifaBase: Double get() = 2.50
    override val capacidadPasajeros: Int get() = 4
    override fun obtenerTipoServicio() = "Taxi Ejecutivo ${if (esVip) "VIP" else "Estándar"}"
}

fun main() {
    val flota: List<ServicioTransporte> = listOf(
        BusUrbano(12),
        MetroQuito(6),
        TaxiEjecutivo(true)
    )

    flota.forEach { println(it) }

    val mayorCapacidad = flota.maxByOrNull { it.capacidadPasajeros }
    println("\nUnidad con mayor capacidad: ${mayorCapacidad?.nombre}")

    println(flota[0].compararCapacidad(flota[2]))
}