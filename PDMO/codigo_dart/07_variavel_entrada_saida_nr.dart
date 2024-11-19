import 'dart:io';

void main (){
    int valor1 =0,valor2=51;
    print('Digite o valor:');

    String? aux= stdin.readLineSync();
    valor1=int.parse(aux!);
    print('O calculo de $valor1+$valor2= ${valor1+valor2}');
}