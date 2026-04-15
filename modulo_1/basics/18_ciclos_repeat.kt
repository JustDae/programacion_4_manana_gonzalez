fun main() {
  println("Controles de flujo iteraciones - ciclos repetitivos - ciclo while")
  println("While basico")
  var contador = 1
  while(contador <= 5){
      println(contador)
      contador ++;
  }
  
  println("Do While")
  contador = 1
  do {
      println(contador)
      contador ++;
  }while(contador <= 5)
  
  println("Break continue")
  contador = 1
  while(contador <= 10){
      contador ++;
      if(contador == 3) continue
      if(contador == 7) break
      println(contador)
  }
 
 var input: String
 while(true){
     println("Escribe 'salir' para terminar")
     input = readLine()?.lowercase()?:""
     if(input=="salir") break
     println("Usted ingrese: $input")
 }
 
var cod: String
 while(true){
     println("Menu de opciones")
     val cod = readLine()?.toIntOrNull()?:0 
     val menu = when(cod){
         1 -> "Saludar"
         2 -> "Sumar"
         3 -> "Tabla"
         4 -> "Salir"
         else -> "Opcion invalida"
     }
     println("Opcion: $cod")
     if(cod == 1){
         println("Hola como estas")
     }
     if(cod == 2){
        println("Suma Realizada")
     }
     if(cod == 3){
         println("Tabla")
     }
     if(menu=="salir") break
     println("Usted ingrese: $menu")
    }
 
 println("Cuantas pulsaciones tomar para calcular frecuencia cardiaca")
 input = readLine()?.toIntOrNull():0
 repeat(mediciones){
     println("Medicion ${i+1} (pulsos en 15 seg.)")
     val pulsos=readLine()?.toIntOrNull():0
     totalPulsaciones += pulsos *4 //para 60 segs
 }
 val promedio = totalPulsaciones/mediciones
 println("Frecuencia cardiaca promedio : $promedio lpm")
 println("Clasificacion: ${
     when{
         promedio < 60 -> "Bradicardia"
         promedio <=100 -> "Normal"
         else -> "Taquicardia"
     }
 }")
}