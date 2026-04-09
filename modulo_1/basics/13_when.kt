fun main() {
    println("Controles de Flujo when")
    println("Escribe codigo")
    val codigo = readLine()?.toIntOrNull()?: 0
    val especialidad = when(codigo){
        1->"Medicina general"
        2-> "Pedriatria"
        3-> "Cardiologia"
        4-> "Ginecologia"
        5-> "Neurologia"
        6-> "Dermatologia"
        else -> "Especialidad no registrada en el sistema"
    }
    println("Especialidad: $especialidad")

}