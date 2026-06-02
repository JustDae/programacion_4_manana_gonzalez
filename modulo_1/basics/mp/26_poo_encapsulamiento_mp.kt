class TarjetaTransporte(titular: String, saldoInicial: Double) {

    val titular: String = titular 

    private var saldo: Double = saldoInicial 

    internal val numeroTarjeta: String = 
        "UIO${(100000..999999).random()}"

    protected open fun calcularBonoRecarga(): Double = saldo * 0.05 

    fun recargar(monto: Double) {
        require(monto > 0) { "El monto debe ser positivo" }
        saldo += monto
        println("Recargado: $${"%.2f".format(monto)} | Nuevo saldo: ${consultarSaldo()}")
    }

    fun pagarPasaje(monto: Double): Boolean {
        require(monto > 0) { "El monto debe ser positivo" }
        if (monto > saldo) {
            println("Saldo insuficiente para el viaje")
            return false
        }
        saldo -= monto
        println("Pasaje pagado: $${"%.2f".format(monto)} | Nuevo saldo: ${consultarSaldo()}")
        return true
    }

    fun consultarSaldo(): String = "$${"%.2f".format(saldo)}"
}

fun main() {
    val miTarjeta = TarjetaTransporte("Dae", 5.0)

    miTarjeta.recargar(10.0)
    miTarjeta.pagarPasaje(0.35)
    miTarjeta.pagarPasaje(20.0)

    println(miTarjeta.titular)
    println(miTarjeta.consultarSaldo())
}