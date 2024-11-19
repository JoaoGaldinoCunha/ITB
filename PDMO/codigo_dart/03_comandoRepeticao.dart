import 'dart:io';

void main (){
  print('Informe o valor:');
  String? valor = stdin.readLineSync();

    for (int cont = 0; cont < 10; cont++) {
    print('$cont - $valor');
  }

}