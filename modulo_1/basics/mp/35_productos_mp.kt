data class Ruta(val id: Int, val nombre: String)

data class Unidad(
    val id: Int,
    val codigo: String,
    val tarifa: Double,
    val capacidad: Int,
    val ruta: Ruta,
    val activa: Boolean = true
) {
    val operativa: Boolean get() = activa && capacidad > 0
    val tarifaConSeguro: Double get() = tarifa + 0.10

    fun ajustarTarifa(porcentaje: Double): Unidad {
        require(porcentaje in -100.0..100.0) { "El ajuste debe estar entre -100 y 100" }
        return copy(tarifa = tarifa * (1 + porcentaje / 100))
    }
}

object SistemaTransporte {
    private val rutas = mutableListOf(
        Ruta(1, "Troncal Central"),
        Ruta(2, "Alimentador Norte"),
        Ruta(3, "Expreso Sur")
    )
    private val unidades = mutableListOf<Unidad>()
    private var siguienteId = 1

    fun registrarUnidad(codigo: String, tarifa: Double, capacidad: Int, rutaId: Int): Unidad? {
        val ruta = rutas.find { it.id == rutaId } ?: return null
        val unidad = Unidad(siguienteId++, codigo, tarifa, capacidad, ruta)
        unidades.add(unidad)
        return unidad
    }

    fun listarTodo(): List<Unidad> = unidades.toList()
    fun operativas(): List<Unidad> = unidades.filter { it.operativa }
    fun porRuta(id: Int): List<Unidad> = unidades.filter { it.ruta.id == id }
    fun buscarPorCodigo(query: String): List<Unidad> =
        unidades.filter { it.codigo.contains(query, ignoreCase = true) }
}

fun main() {
    SistemaTransporte.registrarUnidad("BUS-001", 0.35, 40, 1)
    SistemaTransporte.registrarUnidad("BUS-002", 0.25, 0, 2)
    SistemaTransporte.registrarUnidad("BUS-003", 0.45, 60, 3)
    SistemaTransporte.registrarUnidad("BUS-004", 0.35, 35, 1)
    SistemaTransporte.registrarUnidad("BUS-005", 0.25, 0, 2)
    SistemaTransporte.registrarUnidad("BUS-006", 0.45, 55, 3)
    SistemaTransporte.registrarUnidad("BUS-007", 0.35, 42, 1)

    println("=== Todas las unidades registradas ===")
    for(unidad in SistemaTransporte.listarTodo()) {
        println("${unidad.codigo} — Ruta: ${unidad.ruta.nombre} (Capacidad: ${unidad.capacidad})")
    }

    println("=== Resumen de flota activa ===")
}