fun main() {
  println("Map Inmutable - Destinos y Tarifas")
  val tarifas = mapOf(
  "Quitumbe" to "0.35",
  "Carcelén" to "0.50",
  "Ofelia" to "0.25",
  "Playón" to "0.35"
  )
  println(tarifas["Quitumbe"])
  println(tarifas["Cumbayá"])
  println(tarifas.getOrDefault("Quitumbe","Sin asignar"))
  println(tarifas.getOrDefault("Cumbayá","Sin asignar"))
  println(tarifas)
  println(tarifas.keys)
  println(tarifas.values)
  println(tarifas.entries)
  for((parada, precio) in tarifas){
      println("$parada - $precio")
  }
  
  println("Map mutable - Inventario de Repuestos")
  val repuestos = mutableMapOf(
  "Neumáticos" to 10,
  "Filtros" to 4,
  "Baterías" to 12,
  "Frenos" to 8
  )
  repuestos["Luces"]=5
  println(repuestos)
  repuestos["Neumáticos"]=20
  println(repuestos)
  repuestos.remove("Frenos")
  println(repuestos)
  repuestos.getOrPut("Aceite"){15}
  println(repuestos)
  repuestos.getOrPut("Baterías"){15}
  println(repuestos)
}