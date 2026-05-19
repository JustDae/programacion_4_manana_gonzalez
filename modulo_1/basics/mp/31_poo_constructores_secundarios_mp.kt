class ZonaParqueo(val largo: Double, val ancho: Double) {
    val area: Double get() = largo * ancho
    val capacidad: Double get() = area / 12.5

    constructor(lado: Double) : this(lado, lado)
    constructor(largo: Int, ancho: Int) : this(largo.toDouble(), ancho.toDouble())

    override fun toString() = "Zona de Parqueo(${largo}m x ${ancho}m) | Capacidad est.: ${capacidad.toInt()} unidades"
}

fun main() {
    val z1 = ZonaParqueo(20.0, 10.0)
    val z2 = ZonaParqueo(15.0)
    val z3 = ZonaParqueo(30, 12)

    println(z1)
    println(z2)
    println(z3)
}