import 'dart:io';

void main() {
  print('Informe o preco do produto');
  String? produto = stdin.readLineSync();
  int? valor = int.tryParse(produto!);

  print('Informe o codigo de aumento');
  String? codigo = stdin.readLineSync();
  int? codigoProd = int.tryParse(codigo!);

  if(codigoProd == null ||  codigoProd!=(1,3,4,8)) {
  print('Codigo de aumento invalido');
  }
  switch(codigoProd){  
  case 1 :
  double resultado =valor!*1.15;
  print("novo valor do produto:${resultado.toStringAsFixed(2)}");
  break;
  case 3 :
    double resultado =valor!*1.20;
  print("novo valor do produto:${resultado.toStringAsFixed(2)}");
  break;
  case 4:
  double resultado =valor!*1.35;
  print("novo valor do produto:${resultado}");
  break;
  case 8: 
  double resultado =valor!*1.40;
  print("novo valor do produto:$resultado");
  }
}
