import 'dart:io';

void main() {
  print('Informe um valor ate dez:');
  String? entrada = stdin.readLineSync();
  int? valor = int.tryParse(entrada!);

 if(valor == null || valor<0 || valor >10){
  print("Erro: Por Favor,insira um valor valido de entre 0 e 10");
}else{
  switch(valor){
    case 0:
      print("zero");
      break;
      case 1:
      print("um");
      break;
      case 2:
      print("dois");
      break;
      case 3:
      print("tres");
      break;
      case 4:
      print("quatro");
      break;
      case 5:
      print("cinco");
      break;
      case 6:
      print("seis");
      break;
      case 7:
      print("sete");
      break;
      case 8:
      print("oito");
      break;
      case 9:
      print("nove");
      break;
      case 10:
      print("dez");
      break;
      default:
      print("erro:valor fora de intervalo permetido");
  }
}
}