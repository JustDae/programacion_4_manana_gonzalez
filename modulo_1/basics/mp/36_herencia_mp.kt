open class VehiculoTransporte(val codigo: String, val capacidad: Int) {
    open fun emitirAlerta() = println("Vehículo $codigo: Alerta de salida")
    open fun obtenerFichaTecnica() = "Unidad $codigo (Capacidad: $capacidad pasajeros)"

    fun encenderMotor() = println("Unidad $codigo: Motor encendido")
}

class BusUrbano(codigo: String, capacidad: Int) : VehiculoTransporte(codigo, capacidad) {
    override fun emitirAlerta() {
        super.emitirAlerta()
        println("Aviso: Puertas cerrándose")
    }
    override fun obtenerFichaTecnica() = "${super.obtenerFichaTecnica()}, Bus Urbano"
}

class Tranvia(codigo: String, capacidad: Int, val voltaje: Int) : VehiculoTransporte(codigo, capacidad) {
    override fun obtenerFichaTecnica() = 
        "${super.obtenerFichaTecnica()}, Tranvía Eléctrico ($voltaje V)"
}

fun main() {
    val bus = BusUrbano("B-105", 40)
    bus.emitirAlerta()

    val metro = Tranvia("T-200", 120, 750)
    println(metro.obtenerFichaTecnica())

    bus.encenderMotor()
}