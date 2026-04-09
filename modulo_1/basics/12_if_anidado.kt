fun main() {
    println("Controles de Flujo")
    println("Condicional If-Multiples condiciones")
    println("Tienes antecedentes cardiacos?")
    val tieneAntecedentes = readLine()?.trim()?.lowercase()=="s"
    println("Frecuencia Cardiaca (lpm)")
    val frecuencia = readLine()?.toIntOrNull()?:0
    
    if(tieneAntecedentes){
        print("Paciente con antecedentes cardiacos ")
        if(frecuencia<50){
            println("Bradicardia severa")
        } else if(frecuencia>100){
            println("Taquicardia")
        } else{
            println("Freciencia Normal")
        }
    } else{
        print("Paciente sin antecedentes cardiacos ")
        if(frecuencia<50 || frecuencia > 100){
            println("Frecuencia fuera del rango normal")
        } else{
            println("Freciencia Cardiaca Normal")
        }
    }
}