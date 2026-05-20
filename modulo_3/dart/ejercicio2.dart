import 'dart:io';

void main(){
    int totalCajas = 0;
    int cantidadEmpleados = 0;

    print('Ingrese cantidad de cajas: ');
    
    while(true){
        int cant = int.parse(stdin.readLineSync()!);
        if(cant == 0){
            break;
        }
        totalCajas += cant;
        cantidadEmpleados++;
    }

    if(totalCajas >= 50){

        print('Rendimiento excelente');
    }
    else if(totalCajas >= 20 && totalCajas <= 50){
        print('Rendimiento normal');
    } 
    else{
        print('Rendimiento Bajo');
    }

print('Empleados Regristrados: $cantidadEmpleados');
double promedio = cantidadEmpleados / totalCajas;
print('Promedio: $promedio');
print('total cajas: $totalCajas');

    
}