interface RegistroDigital {
    val id: String
    fun generarTrama(): String
    val versionProtocolo: Int get() = 1
}

interface Auditoria {
    val incidentes: List<String>
    val cumpleNormativa: Boolean get() = incidentes.isEmpty()

    fun auditar(): Boolean
    fun mostrarReporteAuditoria() {
        if (incidentes.isEmpty()) println("Operación bajo norma")
        else incidentes.forEach { println("  ⚠️ $it") }
    }
}

data class DespachoUnidad(
    override val id: String,
    val conductor: String,
    val rutaAsignada: String,
    val combustibleActual: Double
) : RegistroDigital, Auditoria {

    override fun generarTrama() = 
        "$id|$conductor|$rutaAsignada|$combustibleActual"

    override val incidentes: List<String> get() = buildList {
        if (conductor.isBlank()) add("No se ha asignado conductor")
        if (rutaAsignada.isBlank()) add("Ruta no definida para el despacho")
        if (combustibleActual < 15.0) add("Nivel crítico de combustible")
    }

    override fun auditar() = cumpleNormativa
}

fun main() {
    val despachoExitoso = DespachoUnidad("D101", "Dae", "Troncal Central", 85.0)
    val despachoFallido = DespachoUnidad("D102", "", "", 5.0)

    fun procesarEnSistema(r: RegistroDigital) = println("Trama enviada: ${r.generarTrama()}")
    
    fun realizarControl(a: Auditoria) {
        println("Cumplimiento: ${a.cumpleNormativa}")
        a.mostrarReporteAuditoria()
    }

    println("=== PROCESANDO DESPACHO 1 ===")
    procesarEnSistema(despachoExitoso)
    realizarControl(despachoExitoso)

    println("\n=== PROCESANDO DESPACHO 2 ===")
    procesarEnSistema(despachoFallido)
    realizarControl(despachoFallido)
}