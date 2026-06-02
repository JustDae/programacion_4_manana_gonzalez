enum class EstadoUnidad(val descripcion: String, val enMovimiento: Boolean) {
    EN_TERMINAL ("Estacionado en andén", false),
    EN_RUTA     ("Viajando hacia destino", true),
    EN_PARADA   ("Recogiendo pasajeros", false),
    MANTENIMIENTO("En revisión técnica", false),
    FUERA_SERVICIO("Unidad no disponible", false);

    fun puedeCambiarA(siguiente: EstadoUnidad): Boolean = when (this) {
        EN_TERMINAL -> siguiente == EN_RUTA || siguiente == MANTENIMIENTO
        EN_RUTA     -> siguiente == EN_PARADA || siguiente == EN_TERMINAL
        EN_PARADA   -> siguiente == EN_RUTA
        else        -> siguiente == EN_TERMINAL
    }
}

fun main() {
    val estadoActual = EstadoUnidad.EN_RUTA
    println(estadoActual.descripcion)
    println("¿Está en movimiento?: ${estadoActual.enMovimiento}")

    val iconoEstado = when (estadoActual) {
        EstadoUnidad.EN_TERMINAL   -> "🏢"
        EstadoUnidad.EN_RUTA       -> "🚌"
        EstadoUnidad.EN_PARADA     -> "🚏"
        EstadoUnidad.MANTENIMIENTO -> "🔧"
        EstadoUnidad.FUERA_SERVICIO -> "⚠️"
    }
    println("Icono de monitoreo: $iconoEstado")

    println("¿Puede finalizar viaje?: ${estadoActual.puedeCambiarA(EstadoUnidad.EN_TERMINAL)}")
}