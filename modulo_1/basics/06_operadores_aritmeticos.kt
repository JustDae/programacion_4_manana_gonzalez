fun main() {
    println("operadores aritmeticos")
    val numero1 = 10
    val numero2 = 2
    println("Suma")
    println("$numero1 + $numero2 : ${numero1+numero2}")
    println("resta")
    println("$numero1 - $numero2 : ${numero1-numero2}")
    println("Multiplicacion")
    println("$numero1 * $numero2 : ${numero1*numero2}")
    println("Division")
    println("$numero1 / $numero2 : ${numero1/numero2}")
    println("Modulo")
    println("$numero1 % $numero2 : ${numero1%numero2}")
    println("Operadores de asignacion compuesta")
    var x=10
    x+=5
    println("x +- $x")
    x-=3
    println("x-=3 $x")
    x*=6
    println("x-=2 $x")
    x/=2
    println("x/=2 $x")
    x%=2
    println("x/=2 $x")
    //incremento o decremento
    x++
    println("x++ $x")
    x--
    println("x-- $x")
}