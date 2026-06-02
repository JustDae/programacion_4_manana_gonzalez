data class Unidad(
    val id: Int,
    val placa: String,
    val tarifa: Double,
    val ruta: String,
    val enServicio: Boolean = true
)

fun main() {
    val u1 = Unidad(101, "PBQ-1234", 0.35, "Troncal Central")
    val u2 = Unidad(101, "PBQ-1234", 0.35, "Troncal Central")
    val u3 = Unidad(102, "PBC-5678", 0.25, "Alimentador Sur")

    println(u1)

    println(u1 == u2)
    println(u1 == u3)

    val tarifaReducida = u1.copy(tarifa = 0.17)
    val fueraDeLinea = u1.copy(enServicio = false)

    val (id, placa, tarifa) = u1
    println("$id: $placa — $$tarifa")

    listOf(u1, u3).forEach { (idUnidad, nPlaca, costo) ->
        println("[$idUnidad] $nPlaca: $$costo")
    }
}