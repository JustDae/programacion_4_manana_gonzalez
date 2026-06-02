object CentralControl {
    val servidorBus: String = "transporte.quito.gob.ec"
    val puertoSincronizacion: Int = 8080
    private val tokenAcceso: String = "auth-bus-9988"

    fun urlMonitoreo() = "wss://$servidorBus:$puertoSincronizacion/live"
    fun obtenerCredenciales() = mapOf("X-Access-Token" to tokenAcceso)
}

class Bus private constructor(val id: Int, val codigoInterno: String) {
    companion object {
        private var correlativoId = 100

        fun registrar(codigo: String, placa: String): Bus? {
            if (codigo.isEmpty() || placa.length < 6) return null
            return Bus(++correlativoId, codigo.trim().uppercase())
        }

        const val TIPO_VEHICULO = "Articulado"
    }
}

fun main() {
    println(CentralControl.urlMonitoreo())
    
    val bus1 = Bus.registrar("C12", "PBQ-9988")
    println("Bus registrado: ID=${bus1?.id}, Código=${bus1?.codigoInterno}")
}