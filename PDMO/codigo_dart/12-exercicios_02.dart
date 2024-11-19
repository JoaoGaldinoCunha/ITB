import 'dart:io';

void main() {
  print('Informe o dia da semana');
  String? entrada = stdin.readLineSync();
  int? valor = int.tryParse(entrada!);

  if(valor == null ||  valor <1 || valor>7) {
  print('Dia invalido');
  }
  switch(valor){  
  case 1 :
  print('Segunda-feira');
  break;
  case 2 :
  print('Terça-Feira');
  break;
  case 3 :
  print('Quarta-feira');
  break;
  case 4:
  print('Quinta-feira');
  break;
  case 5:
  print('Sexta-Feira');
  break;
  case 6 :
  print('Sábado');
  case 7: 
  print('Domingi');
  }
}
