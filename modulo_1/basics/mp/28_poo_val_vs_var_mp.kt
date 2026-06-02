class UbicacionParada(val latitud: Double, val longitud: Double)

class RegistroPasajeros(var conteo: Int = 0) {
    fun registrarAbordaje() { conteo++ }
    fun vaciarUnidad()      { conteo = 0 }
}

class NotificacionRuta(mensaje: String) {
    val mensajeFormateado = mensaje.uppercase()
}