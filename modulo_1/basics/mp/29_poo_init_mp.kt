class Inspector(val nombre: String, val codigoEmpleado: String) {
    val nombreNormalizado: String
    val terminalAsignada: String

    init {
        require(nombre.isNotBlank()) { "El nombre del inspector no puede estar vacío" }
        require(codigoEmpleado.startsWith("UIO")) { "Código de empleado inválido: $codigoEmpleado" }

        nombreNormalizado = nombre.trim().uppercase()
        terminalAsignada  = if (codigoEmpleado.endsWith("S")) "Terminal Sur" else "Terminal Norte"
    }
}

fun main() {
    val inspector = Inspector("  Carlos Mendoza  ", "UIO882S")
    println(inspector.nombreNormalizado)  
    println(inspector.terminalAsignada)  

   
}