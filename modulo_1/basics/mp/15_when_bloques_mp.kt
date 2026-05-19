    fun main() {
        println("Controles de Flujo When con bloques de codigos")
        println("Numero de bus: ")
        val numeroBus =readLine()?.trim()?.lowercase()?:"Sin identificacion"
        println("Nivel de Incidente (CRITICO/URGENTE/MODERADO/LEVE)")
        val nivel =readLine()?.trim()?.uppercase()?:""
        
        when (nivel) {
            "CRITICO" ->{
                println("ALERTA CRITICA: Bus: $numeroBus")
                println("Desviar trafico alternativo")
                println("Activar protocolo de emergencia")
            }
            "URGENTE" ->{
                println("URGENTE: Bus: $numeroBus")
                println("Priorizar en el sistema de rutas")
                println("Reevaluar en 15 minutos")
            }
            "MODERADO" ->{
                println("MODERADO: Bus: $numeroBus")
            }
            "LEVE" ->{
                println("LEVE: Bus: $numeroBus continuar ruta normal")
            }
            else -> println("nivel no reconocido")
        }
    }