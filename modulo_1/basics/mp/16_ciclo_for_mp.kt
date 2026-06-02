fun main() {
  println("Controles de flujo iteraciones - ciclos repetitivos ciclos for")
  println("For con rango")
  for( unidadId in 1..20 ){
      println("Unidad $unidadId en servicio")
    }
      
  println("For con rango")
  for( unidadId in 1 until 15 ){
      println("Unidad $unidadId operativa")
  }
  
  println("For con pasos")
  for(unidadId in 1..50 step 5){
      println("Unidad $unidadId en revision")
  }
  
  println("For descendente")
  for(unidadId in 30 downTo 1){
      println("Unidad $unidadId regresando")
  }
  
  println("For con listas")
  val rutas = listOf("Linea Norte", "Linea Sur", "Linea Este", "Linea Oeste", "Linea Centro")
  for(ruta in rutas){
      println("Ruta activa: $ruta")
  }
  
  println("For con listas index valor")
  
  for((index, ruta) in rutas.withIndex()){
      println("$index -> Ruta: $ruta")
  }
  
  println("For con break")
  for(unidadId in 1..25){
      if(unidadId==12){
      break;
      }
      println("Procesando unidad $unidadId")
  }
  
  println("For con continue")
  for(unidadId in 1..30){
      if(unidadId==15){
          continue;
      }
      println("Pasajero abordando en unidad $unidadId")
  }
  
   println("For con continue")
    for (i in 1..10) {
        if (i == 3) continue
        if (i == 7) break
        println("item $i")
    }

    val despachos = listOf(
        Triple("Interno 45", 85.5, 40),
        Triple("Interno 12", 12.2, 55),
        Triple("Interno 09", 5.0, 10)
    )

    for ((posicion, reporte) in despachos.withIndex()) {
        val (codigo, combustible, pasajeros) = reporte
        val alertaCombustible = if (combustible <= 10.0) "Reserva" else "Normal"
        val alertaPasajeros = if (pasajeros > 50) "Exceso" else "Normal"
        println("Andén $posicion - $codigo - Comb: $combustible % $alertaCombustible - Ocupación: $pasajeros $alertaPasajeros ")
    }
  
}