interface MetodoAcceso {
    fun validarIngreso(monto: Double): Boolean
    val tipo: String
}

class TarjetaTransporte(val idTarjeta: String) : MetodoAcceso {
    override val tipo = "Tarjeta Electrónica"
    override fun validarIngreso(monto: Double): Boolean {
        println("💳 Descontando $${"%.2f".format(monto)} de la tarjeta $idTarjeta")
        return true
    }
}

class CodigoQR(val token: String) : MetodoAcceso {
    override val tipo = "Código QR Móvil"
    override fun validarIngreso(monto: Double): Boolean {
        println("📱 Escaneando QR dinámico: $token por $${"%.2f".format(monto)}")
        return true
    }
}

class Monedas : MetodoAcceso {
    override val tipo = "Efectivo"
    override fun validarIngreso(monto: Double): Boolean {
        println("🪙 Recibiendo $${"%.2f".format(monto)} en monedas en la alcancía")
        return true
    }
}

class PaseEstudiantil(val carnet: String) : MetodoAcceso {
    override val tipo = "Pase Estudiantil"
    override fun validarIngreso(monto: Double): Boolean {
        val tarifaReducida = monto / 2
        println("🎓 Validando carnet $carnet. Tarifa reducida: $${"%.2f".format(tarifaReducida)}")
        return true
    }
}

fun procesarAbordaje(monto: Double, acceso: MetodoAcceso) {
    println("Validando acceso mediante ${acceso.tipo}...")
    val autorizado = acceso.validarIngreso(monto)
    println(if (autorizado) "✅ Acceso autorizado - Gire el torniquete" else "❌ Acceso denegado")
}

fun main() {
    val accesos: List<MetodoAcceso> = listOf(
        TarjetaTransporte("UIO-2026-44"),
        CodigoQR("QR-9988X77"),
        Monedas(),
        PaseEstudiantil("PUCE-2026")
    )

    accesos.forEach { procesarAbordaje(0.35, it) }

    for (metodo in accesos) {
        println("Dispositivo activo: $metodo")
    }
}