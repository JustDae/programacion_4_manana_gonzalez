class UnidadTransporte(
    val id: Int,
    val placa: String,
    val tarifaBase: Double,
    private val capacidadPasajeros: Int
) {
    val tarifaConSeguro: Double
        get() = tarifaBase + 0.10

    val puedeCircular: Boolean
        get() = capacidadPasajeros > 0

    override fun toString() = "Unidad: $placa (Tarifa: $${"%.2f".format(tarifaBase)})"
}

fun main() {
    val busUrbano = UnidadTransporte(101, "PBQ-1234", 0.35, 40)

    println(busUrbano.puedeCircular)   
    println(busUrbano.tarifaConSeguro) 
}