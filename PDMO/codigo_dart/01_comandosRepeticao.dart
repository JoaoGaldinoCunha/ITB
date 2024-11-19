import 'dart:io';

void main (){
    for (int cont = 0; cont < 10; cont++) {
    print('Contagem ==>$cont ');
  }
  for(int cont = 0;cont <10;cont++){
    if (cont % 2 == 0) {
      int valor = cont;
      print('Pares ==> $valor');
    }
  }
}