import 'dart:io';

void main(){
    double horasTrabajadas = 0;
    int cantSillas = 0;
    int cantEmpleados = 0;
    double horas = 0;
    while(true){
        print('Cantidad de sillas fabricadas: ');
        int cant = int.parse(stdin.readLineSync()!);
        print('Horas trabajadas: ');
        double horas = double.parse(stdin.readLineSync()!);

        if(horas == 0){
            break;
        }

        cantSillas += cant;
        cantEmpleados ++;
        horasTrabajadas += horas;

    }
    if(cantSillas >= 2 && cantSillas <= 4 * horas){
        print('Produccion normal');
    }
    else if(cantSillas > 4 * horas){
        print('Produccion alta');
    }
    else{
        print('Produccion baja');
    }

    print('Total sillas fabricadas: $cantSillas');
    print('Cantidad empleados: $cantEmpleados');
    double promedio = cantSillas / cantEmpleados;
    print('promedio: $promedio');
    print('Horas trabajadas: $horasTrabajadas');
}
