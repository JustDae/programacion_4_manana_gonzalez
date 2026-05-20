import 'dart:io';

void main(){
    int piezasProducidas = 0;
    print('Ingrese la cantidad de piezas producidas: ');
    
    while (true) {
        int cant = int.parse(stdin.readLineSync()!);
        if (cant == 0){
         break;
        
    }
    piezasProducidas++;
    
  }
    if(piezasProducidas < 50){
            print('Produccion adecuada');
        }
        else{
            print('Produccion baja');
        }
}