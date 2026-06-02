sealed class NotificacionTransporte(val titulo: String, val mensaje: String) {
    abstract fun formatear(): String

    data class AlertaRetraso(
        val ruta: String,
        val minutos: Int,
        val causa: String
    ) : NotificacionTransporte("Retraso en $ruta", causa) {
        override fun formatear() =
            "⏳ Alerta de Ruta → $ruta\n   Tiempo: +$minutos min\n   Causa: $mensaje"
    }

    data class PantallaAnden(val anden: Int, val unidadCodigo: String)
        : NotificacionTransporte("Próxima llegada", "Andén $anden") {
        override fun formatear() = "📺 Pantalla → Andén $anden: Unidad $unidadCodigo aproximándose"
    }

    data class MensajeConductor(val unidadId: String, val instruccion: String)
        : NotificacionTransporte("Instrucción", instruccion) {
        override fun formatear() = "📻 Radio → Unidad $unidadId: $instruccion"
    }

    object MantenimientoGeneral : NotificacionTransporte("", "") {
        override fun formatear() = "🛠️ Sistema en mantenimiento preventivo"
    }
}

interface CanalComunicacion {
    val nombre: String
    fun emitir(notificacion: NotificacionTransporte): Boolean
}

class SistemaPantallas : CanalComunicacion {
    override val nombre = "Pantallas Digitales"
    override fun emitir(n: NotificacionTransporte): Boolean {
        if (n !is NotificacionTransporte.PantallaAnden) return false
        println("  [PANTALLA] → Actualizando andén ${n.anden}")
        return true
    }
}

class CentralRadio : CanalComunicacion {
    override val nombre = "Radio Frecuencia"
    override fun emitir(n: NotificacionTransporte): Boolean {
        if (n !is NotificacionTransporte.MensajeConductor) return false
        println("  [RADIO] → Comunicando con unidad ${n.unidadId}")
        return true
    }
}

class GestorComunicaciones(private val canales: List<CanalComunicacion>) {

    fun procesar(notificacion: NotificacionTransporte) {
        println(notificacion.formatear())
        val enviado = canales.any { it.emitir(notificacion) }
        if (!enviado) println("  ⚠️ Canal no disponible para este tipo de alerta")
        println()
    }
}

fun main() {
    val gestor = GestorComunicaciones(listOf(SistemaPantallas(), CentralRadio()))

    listOf(
        NotificacionTransporte.PantallaAnden(5, "BUS-202"),
        NotificacionTransporte.MensajeConductor("BUS-101", "Desvío por tráfico en la Av. Amazonas"),
        NotificacionTransporte.AlertaRetraso("Troncal Norte", 15, "Manifestaciones"),
        NotificacionTransporte.MantenimientoGeneral
    ).forEach { gestor.procesar(it) }
}